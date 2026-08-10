extends Control

@export_group("Hover & Drag Scale")
@export var hover_scale: Vector2 = Vector2(1.05, 1.05)   # 微幅放大即可，過大容易顯得突兀
@export var drag_scale: Vector2 = Vector2(1.12, 1.12)    # 抓起時的放大倍率
@export var scale_duration: float = 0.45                 # 縮放過渡時間
@export var elastic_ease: Tween.EaseType = Tween.EASE_OUT
@export var elastic_trans: Tween.TransitionType = Tween.TRANS_ELASTIC

@export_group("Physical Follow & Tilt (物理跟隨與傾斜)")
@export var follow_smoothness: float = 25.0              # 卡片跟隨滑鼠的平滑度 (越高越緊貼，越低越有重量感)
@export var max_tilt_angle: float = 12.0                # 最大 Z 軸傾斜角度
@export var tilt_responsiveness: float = 0.015           # 速度轉角度的敏感度
@export var tilt_damping: float = 12.0                  # 傾斜恢復平滑度

@export_group("Dynamic Shadow")
@export var shadow_node: TextureRect                    # 陰影節點引用
@export var base_shadow_offset: Vector2 = Vector2(0, 12) # 基礎懸浮陰影偏移
@export var drag_shadow_extra: Vector2 = Vector2(0, 18) # 拖拽時額外拉開的陰影距離
@export var center_influence: float = 20.0              # 光源偏移強度
@export var shadow_lerp_speed: float = 15.0             # 陰影跟隨平滑度

var tween: Tween
var is_hovered: bool = false
var is_dragging: bool = false

var drag_offset: Vector2 = Vector2.ZERO
var target_position: Vector2 = Vector2.ZERO
var current_velocity: Vector2 = Vector2.ZERO
var last_global_pos: Vector2 = Vector2.ZERO

var default_scale: Vector2 = Vector2.ONE
var target_rotation: float = 0.0

func _ready() -> void:
	default_scale = scale
	pivot_offset = size / 2.0  # 確保縮放與旋轉中心都在正中央
	
	if shadow_node:
		shadow_node.pivot_offset = shadow_node.size / 2.0
		# 陰影邊緣調柔和，Alpha 降低會更自然
		shadow_node.self_modulate = Color(0.05, 0.05, 0.08, 0.35)

	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func _process(delta: float) -> void:
	if is_dragging:
		# 1. 計算目標位置（帶點擊偏移）
		var mouse_pos = get_global_mouse_position()
		target_position = mouse_pos - drag_offset
		
		# 2. 物理質量的跟隨插值 (Inertial Follow)
		var prev_pos = global_position
		global_position = global_position.lerp(target_position, follow_smoothness * delta)
		
		# 3. 依據真實移動位移計算這一步的「即時速度」
		current_velocity = (global_position - prev_pos) / delta
		
		# 4. 根據 X 軸速度計算 Z 軸傾斜
		var tilt_from_vel = clamp(current_velocity.x * tilt_responsiveness, -max_tilt_angle, max_tilt_angle)
		target_rotation = tilt_from_vel
		
		# 5. 平滑施加傾斜角度
		rotation_degrees = lerp(rotation_degrees, target_rotation, tilt_damping * delta)
	
	# 即時更新陰影
	_update_shadow(delta)

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			is_dragging = true
			drag_offset = get_global_mouse_position() - global_position
			target_position = global_position
			_play_transform_tween(drag_scale, rotation_degrees)
		else:
			is_dragging = false
			target_rotation = 0.0
			var final_scale = hover_scale if is_hovered else default_scale
			_play_transform_tween(final_scale, 0.0)

func _on_mouse_entered() -> void:
	is_hovered = true
	if not is_dragging:
		_play_transform_tween(hover_scale, 0.0)

func _on_mouse_exited() -> void:
	is_hovered = false
	if not is_dragging:
		_play_transform_tween(default_scale, 0.0)

# 使用 Tween 處理鬆開與懸停時的自然彈性回彈
func _play_transform_tween(target_s: Vector2, target_r: float) -> void:
	if tween and tween.is_running():
		tween.kill()
		
	tween = create_tween().set_parallel(true)
	
	# 縮放使用 Elastic 彈性，但擺動程度調整得更剛好
	tween.tween_property(self, "scale", target_s, scale_duration)\
		.set_trans(elastic_trans)\
		.set_ease(elastic_ease)
		
	# 角度使用 CUBIC 或 QUAD 軟化回彈，避免晃動過於像橡皮筋
	tween.tween_property(self, "rotation_degrees", target_r, scale_duration * 0.8)\
		.set_trans(Tween.TRANS_CUBIC)\
		.set_ease(Tween.EASE_OUT)

# 依據光源與位置平滑更新陰影
func _update_shadow(delta: float) -> void:
	if not shadow_node:
		return
		
	var viewport_center = get_viewport_rect().size / 2.0
	var card_center = global_position + (size / 2.0)
	var offset_from_center = (card_center - viewport_center) / viewport_center
	
	# 動態光源 X 軸偏移，模擬螢幕上方主光源
	var dynamic_x = offset_from_center.x * center_influence
	var dynamic_y = base_shadow_offset.y + (abs(offset_from_center.y) * 6.0)
	
	var state_offset = Vector2.ZERO
	if is_dragging:
		state_offset = drag_shadow_extra
	elif is_hovered:
		state_offset = Vector2(0, 4)
		
	var target_shadow_offset = Vector2(dynamic_x, dynamic_y) + state_offset
	shadow_node.position = shadow_node.position.lerp(target_shadow_offset, shadow_lerp_speed * delta)
