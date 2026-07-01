extends CharacterBody3D

@export_category("PlayerSetting")
@export var speed = 5.0
@export var jump_velocity = 4.5
@export var camera:Camera3D
@export var extra_jump:bool=0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor() and !extra_jump:
		velocity.y = jump_velocity
		extra_jump=true
	#2段跳
	if Input.is_action_just_pressed("ui_accept") and !is_on_floor() and extra_jump:
		velocity.y = jump_velocity
		extra_jump=false
		pass

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	direction=direction.rotated(Vector3.UP,camera.global_rotation.y)
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)

	move_and_slide()
