extends Sprite2D

# 物理參數
@export var stiffness: float = 180.0  # 彈簧剛度（數值越大彈得越快）
@export var damping: float = 12.0     # 阻尼（數值越大越快停下來）

# 變形目標與速度
var target_scale: Vector2 = Vector2.ONE
var scale_velocity: Vector2 = Vector2.ZERO

var target_skew: float = 0.0
var skew_velocity: float = 0.0

func _process(delta: float) -> void:
	# 1. 計算 Scale 的彈簧物理
	var scale_displacement = scale - target_scale
	var scale_force = -stiffness * scale_displacement - damping * scale_velocity
	scale_velocity += scale_force * delta
	scale += scale_velocity * delta

	# 2. 計算 Skew (左右傾斜) 的彈簧物理
	var skew_displacement = skew - target_skew
	var skew_force = -stiffness * skew_displacement - damping * skew_velocity
	skew_velocity += skew_force * delta
	skew += skew_velocity * delta

# 觸發搖晃：傳入 X 軸力（左右歪斜）與 Y 軸力（壓扁/拉長）
func squish(force_x: float, force_y: float) -> void:
	skew_velocity += force_x
	scale_velocity += Vector2(-force_y * 0.5, force_y)

# 測試用：點擊滑鼠左鍵搖晃布丁
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		# 施加左右與上下衝量
		squish(randf_range(-1.5, 1.5), randf_range(-0.5, 0.8))
