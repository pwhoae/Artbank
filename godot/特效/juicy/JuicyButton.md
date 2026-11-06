我将为你生成一个基于 Godot 4.x 的通用 UI 按钮增强脚本（`JuicyButton.gd`），该脚本实现了视频中提到的所有“果汁感（Juicy Feedback）”交互效果，包括悬停/点击缩放与Q弹变形（Squash & Stretch）、随机倾斜、颜色渐变、动态波纹/光圈扩展、音效与随机 Pitch 变调，以及场景进入/退出时的交错依次动画（Stagger Entrance）。

我将把完整的 Godot 代码和详细的使用说明整合生成在一个代码文件中。

### 使用说明

1. **挂载脚本**：在 Godot 4 中创建一个 `Button` 节点，将上面的 `juicy_button.gd` 脚本附加到按钮节点上。
2. **检查器配置**：
* **Entrance Delay**：对于主菜单中的多个按钮，给第 1 个按钮设为 `0.0`，第 2 个设为 `0.1`，第 3 个设为 `0.2`，以此类推，即可自动实现场景载入时的**依次弹入动画**。
* **SFX & Pitch**：拖入你的悬停和点击 `.wav`/`.ogg` 音效文件，脚本会自动应用随机 Pitch，避免连续点击时声音单调。
* **Squash & Stretch**：可自行在检查器调节悬停与点击时的缩放比例（如 `(1.15, 0.85)`）和倾斜角度。


----
==============================================================================

JuicyButton.gd - Godot 4.x 游戏 UI 按钮果汁感反馈增强组件

==============================================================================

功能亮点（基于视频《三步增加你的游戏按钮反馈》实现）：

1. Hover & Click 悬停与点击状态的 Q 弹变形（Squash & Stretch）与缩放

2. 鼠标悬停时的随机倾斜（Random Tilt / Rotation）

3. 外边框 / 文字颜色渐变与按压下沉效果

4. 点击时的外扩光圈/波纹视觉反馈 (Shader / CanvasItem Draw)

5. 音效播放与 Pitch 随机化（音高变化避免单调）

6. 场景载入时的按钮逐个交错出现动画（Stagger Entrance）

==============================================================================

@tool
extends Button
class_name JuicyButton

------------------------------------------------------------------------------

属性配置 - 1. 动画与形变 (Juice & Juice Mechanics)

------------------------------------------------------------------------------

@export_group("Juice Effects / 果汁感效果")

是否启用鼠标悬停时的 Q 弹形变

@export var enable_squash_and_stretch: bool = true

悬停时的膨胀系数 (X方向膨胀，Y方向压缩)

@export var hover_squash_scale: Vector2 = Vector2(1.15, 0.85)

点击时的压缩系数

@export var click_squash_scale: Vector2 = Vector2(0.9, 1.1)

悬停时的最大随机倾斜角度 (度数)

@export var max_random_rotation_deg: float = 4.0

动画缓动时间

@export var tween_duration: float = 0.15

------------------------------------------------------------------------------

属性配置 - 2. 颜色与材质 (Visuals & Colors)

------------------------------------------------------------------------------

@export_group("Colors / 颜色与反馈")

正常状态字体颜色

@export var normal_text_color: Color = Color("e0e0e0")

悬停状态字体颜色

@export var hover_text_color: Color = Color("ffdd57")

点击/按下状态字体颜色

@export var pressed_text_color: Color = Color("ff3860")

按下时的垂直下沉偏移量 (像素)

@export var press_down_offset: float = 4.0

------------------------------------------------------------------------------

属性配置 - 3. 点击光圈反馈 (Click Ripple Effect)

------------------------------------------------------------------------------

@export_group("Ripple Effect / 点击光圈")

是否开启点击光圈拓展特效

@export var enable_ripple: bool = true

光圈颜色

@export var ripple_color: Color = Color(1.0, 1.0, 1.0, 0.6)

光圈扩散最大半径

@export var max_ripple_radius: float = 80.0

------------------------------------------------------------------------------

属性配置 - 4. 音效与随机 Pitch (Audio & Pitch Modulation)

------------------------------------------------------------------------------

@export_group("Audio / 音效设置")

鼠标进入/悬停音效

@export var hover_sfx: AudioStream

点击音效

@export var click_sfx: AudioStream

音高随机化范围 (例如 0.95 到 1.05)

@export var pitch_random_range: Vector2 = Vector2(0.9, 1.15)

------------------------------------------------------------------------------

属性配置 - 5. 逐个入场动画 (Staggered Entrance Animation)

------------------------------------------------------------------------------

@export_group("Entrance / 入场层级动画")

入场延迟（秒），可在多个按钮上递增设置（如 0.0, 0.1, 0.2）实现依次弹出效果

@export var entrance_delay: float = 0.0

入场滑入偏移向量

@export var entrance_offset: Vector2 = Vector2(0, 50)

------------------------------------------------------------------------------

内部变量 (Internal Variables)

------------------------------------------------------------------------------

var _audio_player: AudioStreamPlayer
var _tween_scale: Tween
var _tween_rotate: Tween
var _tween_offset: Tween
var _base_pivot_offset: Vector2

点击光圈动画变量

var _ripple_radius: float = 0.0
var _ripple_alpha: float = 0.0
var _ripple_center: Vector2 = Vector2.ZERO

------------------------------------------------------------------------------

生命周期生命 (Lifecycle Methods)

------------------------------------------------------------------------------

func _ready() -> void:
# 确保 Pivot 点位于按钮中心，保证缩放和倾斜以中心为基准
pivot_offset = size / 2.0
_base_pivot_offset = pivot_offset

# 连接尺寸改变信号以更新 Pivot
resized.connect(func(): pivot_offset = size / 2.0)

# 创建内置音频播放器
_audio_player = AudioStreamPlayer.new()
_audio_player.bus = "SFX" if AudioServer.get_bus_index("SFX") != -1 else "Master"
add_child(_audio_player)

# 运行时连接事件信号
if not Engine.is_editor_hint():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)
	pressed.connect(_on_pressed)

	# 初始化颜色
	add_theme_color_override("font_color", normal_text_color)
	
	# 执行逐个出现的入场动画
	_play_entrance_animation()


func _draw() -> void:
# 绘制点击时的波纹光圈
if _ripple_alpha > 0.001 and _ripple_radius > 0:
var draw_color = ripple_color
draw_color.a *= _ripple_alpha
draw_arc(_ripple_center, _ripple_radius, 0, TAU, 32, draw_color, 3.0, true)

------------------------------------------------------------------------------

交互动画逻辑 (Interaction Mechanics)

------------------------------------------------------------------------------

鼠标进入（Hover）

func _on_mouse_entered() -> void:
add_theme_color_override("font_color", hover_text_color)
_play_sfx(hover_sfx)

if enable_squash_and_stretch:
	# Q弹变形 (X 放大, Y 缩小)
	_animate_scale(hover_squash_scale, tween_duration, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	
	# 随机角度微倾斜
	var random_deg = randf_range(-max_random_rotation_deg, max_random_rotation_deg)
	_animate_rotation(deg_to_rad(random_deg), tween_duration)


鼠标离开（Unhover）

func _on_mouse_exited() -> void:
add_theme_color_override("font_color", normal_text_color)

# 恢复初始形态与角度
_animate_scale(Vector2.ONE, tween_duration, Tween.TRANS_SPRING, Tween.EASE_OUT)
_animate_rotation(0.0, tween_duration)
_animate_position_offset(Vector2.ZERO, tween_duration)


按钮按下（Press Down）

func _on_button_down() -> void:
add_theme_color_override("font_color", pressed_text_color)

# 点击压缩与下沉效果
_animate_scale(click_squash_scale, 0.08, Tween.TRANS_QUAD, Tween.EASE_OUT)
_animate_position_offset(Vector2(0, press_down_offset), 0.08)


按钮弹起（Release Up）

func _on_button_up() -> void:
add_theme_color_override("font_color", hover_text_color if is_hovered() else normal_text_color)

# 恢复下沉并回弹
_animate_position_offset(Vector2.ZERO, 0.1)
if is_hovered():
	_animate_scale(hover_squash_scale, tween_duration, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
else:
	_animate_scale(Vector2.ONE, tween_duration, Tween.TRANS_SPRING, Tween.EASE_OUT)


点击判定（Trigger Action）

func _on_pressed() -> void:
_play_sfx(click_sfx)
if enable_ripple:
_trigger_ripple_effect()

------------------------------------------------------------------------------

辅助函数：Tween 补间动画与特效控制

------------------------------------------------------------------------------

缩放 Tween

func _animate_scale(target_scale: Vector2, duration: float, trans: Tween.TransitionType = Tween.TRANS_BACK, ease_type: Tween.EaseType = Tween.EASE_OUT) -> void:
if _tween_scale and _tween_scale.is_running():
_tween_scale.kill()
_tween_scale = create_tween().set_parallel(false)
_tween_scale.tween_property(self, "scale", target_scale, duration).set_trans(trans).set_ease(ease_type)

旋转 Tween

func _animate_rotation(target_rad: float, duration: float) -> void:
if _tween_rotate and _tween_rotate.is_running():
_tween_rotate.kill()
_tween_rotate = create_tween()
_tween_rotate.tween_property(self, "rotation", target_rad, duration).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)

位置偏移（用于按压下沉）Tween

func _animate_position_offset(target_offset: Vector2, duration: float) -> void:
if _tween_offset and _tween_offset.is_running():
_tween_offset.kill()
_tween_offset = create_tween()
_tween_offset.tween_property(self, "position", position + target_offset, duration).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)

触发点击波纹光圈动画

func _trigger_ripple_effect() -> void:
_ripple_center = get_local_mouse_position()
_ripple_radius = 0.0
_ripple_alpha = 1.0

var ripple_tween = create_tween().set_parallel(true)
ripple_tween.tween_method(func(r): _ripple_radius = r; queue_redraw(), 0.0, max_ripple_radius, 0.35).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
ripple_tween.tween_method(func(a): _ripple_alpha = a; queue_redraw(), 1.0, 0.0, 0.35).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)


逐个交错入场动画 (Staggered Entrance)

func _play_entrance_animation() -> void:
modulate.a = 0.0
var original_pos = position
position += entrance_offset

var entrance_tween = create_tween().set_parallel(true)
entrance_tween.chain().interval(entrance_delay) # 延迟执行
entrance_tween.tween_property(self, "position", original_pos, 0.4).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
entrance_tween.tween_property(self, "modulate:a", 1.0, 0.3).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)


播放音效并增加随机 Pitch 变调

func _play_sfx(stream: AudioStream) -> void:
if not stream or not _audio_player:
return
_audio_player.stream = stream
_audio_player.pitch_scale = randf_range(pitch_random_range.x, pitch_random_range.y)
_audio_player.play()