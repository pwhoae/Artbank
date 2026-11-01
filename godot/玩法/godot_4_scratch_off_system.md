# Godot 4 刮刮卡 (Scratch-Off Card) 系統開發與音效整合教程

本教程將帶領你一步步實作一個具備**即時動態遮罩**、**清除率估算自動揭幕**以及**動態音效切片播放**功能的 Godot 4 刮刮卡 (TextureRect) 系統。

## 🎯 系統功能亮點

1. **Shader 動態繪製**：基於 `ShaderMaterial` 傳送擦除點位 (`erase_points`) 陣列，實現靈活的塗抹刮開效果。

2. **網格化清除率計算 (Grid-based Evaluation)**：將卡面切分為 $20 \times 20$ 網格，高效估算刮開面積比例，達標自動觸發完整揭幕（Fade Out）。

3. **音效切片與隨機 Pitch**：支援設定音訊的播放區段（`start_time` \~ `end_time`），附帶播放冷卻（Cooldown）與隨機音調變換，避免音效重疊破音。

## 📦 第一步：建立自定義 Resource (ScratchAudioItem)

為了精準控制音效檔的播放區段（例如同一支長音效檔中包含多個刮卡聲），我們建立一個 Resource 來存放音效區段資訊。

創建新腳本 `scratch_audio_item.gd`：

```
class_name ScratchAudioItem
extends Resource

@export var stream: AudioStream
@export var start_time: float = 0.0
@export var end_time: float = 0.0

```

## 🎨 第二步：卡面主邏輯 (ScratchCard.gd)

將此腳本掛載至 `TextureRect` 節點上。

```
extends TextureRect
class_name ScratchCard

# ================================
# 1. 導出屬性 (Export Properties)
# ================================
@export var brush_size: float = 30.0
@export_range(0.1, 1.0) var reveal_threshold: float = 0.8 # 達到指定比例時自動全部刮開

@export_category("Audio Settings")
@export var scratch_sounds: Array[ScratchAudioItem] = []
@export var min_pitch: float = 0.95
@export var max_pitch: float = 1.05
@export var audio_cooldown: float = 0.08 # 播放冷卻時間，避免連續播放過於密集破音

# ================================
# 2. 內部變數 (Internal Variables)
# ================================
var erase_points: PackedVector2Array = []
var initial_window_size: Vector2
var shader_material: ShaderMaterial
var is_fully_revealed: bool = false

# 網格估算器 (20x20 Grid System)
const GRID_SIZE: int = 20
var cleared_grids: Dictionary = {}
var total_grids: int = GRID_SIZE * GRID_SIZE

# 音訊控制器
var audio_player: AudioStreamPlayer
var time_since_last_sound: float = 0.0
var current_target_end_time: float = 0.0
var is_enforcing_end_time: bool = false

# ================================
# 3. 生命週期與輸入處理 (Lifecycle & Input)
# ================================
func _ready() -> void:
	initial_window_size = get_viewport().get_visible_rect().size
	shader_material = material as ShaderMaterial
	
	if shader_material:
		shader_material.set_shader_parameter("brush_size", brush_size)
		
	# 動態建立並掛載 AudioStreamPlayer 節點
	audio_player = AudioStreamPlayer.new()
	add_child(audio_player)

func _process(delta: float) -> void:
	time_since_last_sound += delta
	
	# 每幀監測：若設定了結束區段，到了 end_time 即時強制停止
	if is_enforcing_end_time and audio_player.playing:
		if audio_player.get_playback_position() >= current_target_end_time:
			audio_player.stop()
			is_enforcing_end_time = false
	
	# 處理視窗縮放時的比例同步
	var current_window_size = get_viewport().get_visible_rect().size
	if current_window_size != initial_window_size and initial_window_size.x > 0 and initial_window_size.y > 0:
		var scale_ratio = initial_window_size / current_window_size
		if shader_material:
			shader_material.set_shader_parameter("scale_ratio", scale_ratio)

func _input(event: InputEvent) -> void:
	if is_fully_revealed:
		return
		
	if event is InputEventMouseMotion or event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			var local_pos = get_local_mouse_position()
			if Rect2(Vector2.ZERO, size).has_point(local_pos):
				add_erase_point(local_pos)

# ================================
# 4. 核心邏輯 (Core Logic)
# ================================

## 新增擦除點位
func add_erase_point(point: Vector2) -> void:
	# 上限防護：避免點數過多造成 Shader 效能下降
	if erase_points.size() >= 3000:
		return
	
	# 距離過近的點過濾，減少重複計算
	if erase_points.size() > 0 and erase_points[erase_points.size() - 1].distance_to(point) < 5.0:
		return
		
	erase_points.append(point)
	update_shader_parameters()
	
	# 播放刮卡音效（受 Cooldown 限制）
	play_scratch_sound()
	
	# 計算並檢查清除比例
	check_reveal_percentage(point)

## 音效播放管理
func play_scratch_sound() -> void:
	if scratch_sounds.is_empty():
		return
		
	if time_since_last_sound >= audio_cooldown:
		var valid_items = scratch_sounds.filter(func(item): return item != null and item.stream != null)
		if valid_items.is_empty():
			return
			
		time_since_last_sound = 0.0
		
		# 隨機抽取音效區段項目
		var random_item: ScratchAudioItem = valid_items[randi() % valid_items.size()]
		
		audio_player.stream = random_item.stream
		audio_player.pitch_scale = randf_range(min_pitch, max_pitch)
		
		var play_from = max(0.0, random_item.start_time)
		audio_player.play(play_from)
		
		if random_item.end_time > play_from:
			current_target_end_time = random_item.end_time
			is_enforcing_end_time = true
		else:
			is_enforcing_end_time = false

## 網格清除比例檢測
func check_reveal_percentage(point: Vector2) -> void:
	var grid_x = int((point.x / size.x) * GRID_SIZE)
	var grid_y = int((point.y / size.y) * GRID_SIZE)
	
	# 自動將筆刷半徑內的網格標記為已清除
	var brush_grid_radius = int((brush_size / size.x) * GRID_SIZE) + 1
	for x in range(grid_x - brush_grid_radius, grid_x + brush_grid_radius + 1):
		for y in range(grid_y - brush_grid_radius, grid_y + brush_grid_radius + 1):
			if x >= 0 and x < GRID_SIZE and y >= 0 and y < GRID_SIZE:
				cleared_grids[Vector2i(x, y)] = true
				
	var cleared_ratio = float(cleared_grids.size()) / float(total_grids)
	
	if cleared_ratio >= reveal_threshold:
		reveal_all()

## 自動完全揭幕（過場淡出）
func reveal_all() -> void:
	if is_fully_revealed:
		return
	is_fully_revealed = true
	
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 0.0, 0.5)
	print("刮刮卡已達揭幕門檻，自動完全清除！")

## 更新 Shader 參數
func update_shader_parameters() -> void:
	if shader_material:
		shader_material.set_shader_parameter("erase_points", erase_points)
		shader_material.set_shader_parameter("erase_point_count", erase_points.size())

```

## 🎨 第三步：配套 Shader 實作 (ScratchShader.gdshader)

在 `TextureRect` 的 CanvasItem Material 中建立並指定以下 Shader：

```
shader_type canvas_item;

uniform vec2 erase_points[3000];
uniform int erase_point_count = 0;
uniform float brush_size = 30.0;
uniform vec2 scale_ratio = vec2(1.0, 1.0);

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    vec2 current_pos = UV / TEXTURE_PIXEL_SIZE; // 轉換為像素座標系統
    
    float alpha = tex_color.a;
    
    // 遍歷所有擦除點，檢查當前像素是否落在塗抹半徑內
    for (int i = 0; i < erase_point_count; i++) {
        vec2 p = erase_points[i];
        if (distance(current_pos, p) < brush_size) {
            alpha = 0.0;
            break;
        }
    }
    
    COLOR = vec4(tex_color.rgb, alpha);
}

```

## 📖 第四步：變數說明 (Variables Breakdown)

### 1. Inspector 導出變數 (`@export`)

| 變數名稱 | 型態 | 預設值 | 說明 | 
| ----- | ----- | ----- | ----- | 
| `brush_size` | `float` | `30.0` | 刮卡橡皮擦/筆刷的像素半徑。 | 
| `reveal_threshold` | `float` | `0.1` (10%) | 自動揭幕門檻。刮開比例到達此值時觸發 Fade-Out。 | 
| `scratch_sounds` | `Array[ScratchAudioItem]` | `[]` | 可隨機抽取的音效資源切片清單。 | 
| `min_pitch` | `float` | `0.95` | 音效隨機 Pitch 的下限。 | 
| `max_pitch` | `float` | `1.05` | 音效隨機 Pitch 的上限。 | 
| `audio_cooldown` | `float` | `0.08` | 音效播放冷卻時間（秒），防止滑鼠快速移動時連續觸發破音。 | 

### 2. 內部狀態變數 (Internal State)

* `erase_points: PackedVector2Array`：紀錄使用者拖曳過的所有像素點座標陣列（最大容量 3000）。

* `cleared_grids: Dictionary`：哈希表，紀錄已被刮開的網格座標（`Vector2i(x, y) => true`）。

* `audio_player: AudioStreamPlayer`：程式動態生成並管轄的音訊播放節點。

* `current_target_end_time: float` & `is_enforcing_end_time: bool`：用於精準控制 `AudioStream` 在特定的切片時間點（`end_time`）停下。

## ⚙️ 第五步：核心函數與邏輯說明 (Functions Breakdown)

### 1. `_input(event: InputEvent)`

* **目的**：監聽玩家在卡面上的按壓與滑鼠拖曳行為。

* **邏輯**：當左鍵按住且傳送點在卡面 `Rect2` 範圍內時，獲取局部座標 `get_local_mouse_position()` 並傳送給 `add_erase_point()`。

### 2. `add_erase_point(point: Vector2)`

* **目的**：加入新的擦除點並驅動全套連鎖更新。

* **步驟**：

  1. 檢查上限（3000 個點）。

  2. 距離檢查（距上個點 $< 5.0\text{px}$ 則捨棄，減少重複點位）。

  3. 更新 `erase_points` 並調用 `update_shader_parameters()` 送至 Shader。

  4. 觸發 `play_scratch_sound()` 與 `check_reveal_percentage()`。

### 3. `play_scratch_sound()`

* **目的**：控制音效切片與 Pitch 音高變化。

* **步驟**：

  1. 檢查 `audio_cooldown` 冷卻時間。

  2. 過濾掉無效資源，從 `scratch_sounds` 中 `randi()` 隨機選擇一份。

  3. 將 `AudioStreamPlayer` 的 `pitch_scale` 設為 `randf_range(min_pitch, max_pitch)`。

  4. 從 `random_item.start_time` 開始 `play()`，若設有 `end_time` 則啟動 `_process()` 每幀監控裁切。

### 4. `check_reveal_percentage(point: Vector2)`

* **目的**：採用估算方式計算卡面覆蓋率，避免對整張 Texture 做逐像素 Readback 計算導致嚴重 lag。

* **計算方式**：
  

  $$
  \text{Grid Position X} = \lfloor \frac{\text{point.x}}{\text{size.x}} \times \text{GRID\_SIZE} \rfloor
  $$

  
  以該座標點為中心，將筆刷半徑劃出的網格加入 `cleared_grids` Dictionary。達到 `reveal_threshold` 門檻即調用 `reveal_all()`。

### 5. `reveal_all()`

* **目的**：達成目標後，優雅地隱藏剩餘未刮開的圖層。

* **邏輯**：使用 Godot 4 的 `create_tween()` 在 0.5 秒內將 `modulate:a`（Alpha 透明度）歸零，完成自動全亮效果。

## 🚀 第六步：手把手配置指南 (Setup & Usage Guide)

1. **建立 UI 結構**：

   * 新建一個 `Control` 節點做為根節點。

   * 新增底圖 `TextureRect`（獎品圖片 / 底卡圖案）。

   * 在底圖上方疊加刮圖 `TextureRect`（銀色塗層圖案）。

2. **掛載腳本與 Shader**：

   * 將 `ScratchCard.gd` 附加到上面的刮圖 `TextureRect`。

   * 在 Inspector 的 `Material` 欄位創建一個 `ShaderMaterial`，並將 `ScratchShader.gdshader` 指定給它。

3. **設定音效切片**：

   * 在 Inspector 點擊 `Scratch Sounds` 陣列新增項目。

   * 點選 `ScratchAudioItem` 填入聲音檔 (`.wav` / `.mp3`)。

   * 依照音訊內容微調 `start_time` 與 `end_time` 秒數即可完成體驗調校！