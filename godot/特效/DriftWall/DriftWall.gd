class_name DriftWall
extends Control

@export var items: Array[Dictionary] = [
	{"href": "https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/readme.md"}
	# 範例結構: { "texture": Texture2D, "title": "Peaks", "href": "https..." }
]

@export_category("Layout")
@export var columns: int = 5
@export var tile_width: float = 200.0
@export var tile_height: float = 132.0
@export var gap: float = 100.0
@export var radius: float = 14.0
@export_range(-45.0, 45.0, 0.1, "radians_as_degrees") var tilt_angle: float = -12.0 # 傾斜角度（角度值）

@export_category("Animation")
@export var speed: float = 42.0
@export var direction_up: bool = true
@export var variance: float = 0.45

var column_tracks: Array[Node2D] = []
var column_offsets: Array[float] = []
var column_speeds: Array[float] = []

func _ready() -> void:
	resized.connect(_setup_wall);_setup_wall()

func _setup_wall() -> void:
	for child in get_children():
		child.queue_free()
	column_tracks.clear();column_offsets.clear();column_speeds.clear()
	
	if items.is_empty():return

	# 計算角度弧度
	var rad := deg_to_rad(tilt_angle)
	for c in range(columns):
		var col_node := Node2D.new();col_node.rotation = rad
		var spacing := tile_width + gap
		col_node.position = Vector2(c * spacing, 0).rotated(rad)
		add_child(col_node);column_tracks.append(col_node)
		
		var alt_sign := 1 if c % 2 == 0 else -1
		var dir_sign := 1 if direction_up else -1
		var pseudo := fposmod(c * 0.6180339887 + 0.35, 1.0) * 2.0 - 1.0
		var col_speed := speed * (1.0 + variance * pseudo) * dir_sign * alt_sign
		column_speeds.append(col_speed)
		column_offsets.append(fposmod(c * 0.37, 1.0) * (items.size() * (tile_height + gap)))
		
		_populate_track(col_node, c)
		
func _populate_track(track: Node2D, col_index: int) -> void:
	var col_items: Array = []
	for i in range(items.size()):
		if i % columns == col_index:
			col_items.append(items[i])
	
	if col_items.is_empty():
		col_items.append(items[0])
		
	var unit := tile_height + gap
	var copy_height := maxf(unit, col_items.size() * unit)
	var copies := ceili((size.y * 1.6) / copy_height) + 1
	
	for copy_idx in range(copies):
		for item_idx in range(col_items.size()):
			var item_data: Dictionary = col_items[item_idx]
			var tile := _create_tile(item_data)
			tile.position.y = (copy_idx * copy_height) + (item_idx * unit)
			tile.set_meta("col", col_index)
			track.add_child(tile)

func _create_tile(data: Dictionary) -> Button:
	# 將原本的 Control 改為 Button，具備按鈕點擊互動特性
	var tile := Button.new()
	tile.custom_minimum_size = Vector2(tile_width, tile_height)
	tile.size = Vector2(tile_width, tile_height)
	
	# 內部圖片與裝飾
	var inner := PanelContainer.new()
	inner.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT, Control.PRESET_MODE_MINSIZE, gap / 2.0)
	inner.mouse_filter = Control.MOUSE_FILTER_PASS
	
	var tex_rect := TextureRect.new()
	if data.has("texture") and data["texture"] is Texture2D:
		tex_rect.texture = data["texture"]
	tex_rect.expand_mode = TextureRect.EXPAND_FIT_WIDTH_PROPORTIONAL
	inner.add_child(tex_rect)
	
	tile.add_child(inner)
	
	# 綁定點擊事件（可在此處理 href 開啟或其他邏輯）
	if data.has("href") and not data["href"].is_empty():
		tile.pressed.connect(func() -> void:
			OS.shell_open(data["href"])
		)
		
	return tile

func _process(delta: float) -> void:
	if size.y <= 0:
		return
		
	for c in range(column_tracks.size()):
		var track := column_tracks[c]
		var unit := tile_height + gap
		
		var col_item_count := 0
		for i in range(items.size()):
			if i % columns == c:
				col_item_count += 1
		if col_item_count == 0:
			col_item_count = 1
			
		var copy_height := maxf(unit, col_item_count * unit)
		
		# 固定速度移動，不受滑鼠影響
		column_offsets[c] += column_speeds[c] * delta
		column_offsets[c] = fposmod(column_offsets[c], copy_height)
		
		track.position.y = -column_offsets[c]
