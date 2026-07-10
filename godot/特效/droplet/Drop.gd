# WaterDropMovement.gd
extends Sprite2D

var velocity = Vector2.ZERO
var speed = 100.0
var noise = FastNoiseLite.new()
var time_passed = 0.0

func _ready():
	# 初始化随机速度和噪声，让水滴有独特的蠕动感
	randomize()
	velocity = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized() * speed
	noise.seed = randi()
	noise.frequency = 0.5

func _process(delta):
	time_passed += delta
	
	# 1. 基础漂浮移动
	position += velocity * delta
	
	# 2. 加上噪声扰动，让水滴像游动一样扭曲
	var v_noise = noise.get_noise_1d(time_passed) * 30.0
	position.y += v_noise * delta
	
	# 3. 屏幕边界反弹（假设屏幕大小为 1152x648）
	if position.x < 0 or position.x > 1152:
		velocity.x *= -1
	if position.y < 0 or position.y > 648:
		velocity.y *= -1
		
	# 4. 视频中大水滴在鼠标附近会变形或吸引（可选实现）
	var mouse_pos = get_global_mouse_position()
	if position.distance_to(mouse_pos) < 150:
		# 轻轻向鼠标靠拢或根据鼠标位置产生拉伸变形
		var dir = (mouse_pos - position).normalized()
		position += dir * speed * 0.5 * delta
		
		# 改变缩放实现长条状的拉伸拉丝效果 (Squash and Stretch)
		var stretch_factor = 1.0 + (position.distance_to(mouse_pos) / 300.0)
		scale = Vector2(2.0 - stretch_factor, stretch_factor).clamp(Vector2(0.5,0.5), Vector2(2.0,2.0))
	else:
		# 恢复正常圆形
		scale = scale.move_toward(Vector2.ONE, delta * 2.0)
