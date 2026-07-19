extends TextureRect

@export var sensitivity: float = 1.0
var target_offset: Vector2 = Vector2.ZERO
var current_offset: Vector2 = Vector2.ZERO
var lerp_speed: float = 10.0

func _process(delta: float) -> void :
	# 方案 A：在 PC 端用鼠标位置驱动
	var viewport_size = get_viewport().get_visible_rect().size
	var mouse_pos = get_viewport().get_mouse_position()
	
	# 将鼠标位置映射到 -1.0 到 1.0 之间
	target_offset.x = (mouse_pos.x / viewport_size.x) * 10.0 - 1.0
	target_offset.y = (mouse_pos.y / viewport_size.y) * 10.0 - 1.0
	
	# 方案 B：在手机端用陀螺仪驱动（如果是在移动端，取消注释以下代码）
	# var gravity = Input.get_gravity()
	# if gravity != Vector3.ZERO:
	#     target_offset.x = -gravity.x / 9.8
	#     target_offset.y = gravity.y / 9.8

	# 平滑插值，让移动更丝滑
	current_offset = current_offset.lerp(target_offset * sensitivity, lerp_speed * delta)
	
	# 传递给 Shader
	(material as ShaderMaterial).set_shader_parameter("offset", current_offset)
