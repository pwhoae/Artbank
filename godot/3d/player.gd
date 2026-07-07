extends CharacterBody3D

@export var speed = 5.0
@export var mouse_sensitivity = 0.002

var gravity = 9.8
var camera

func _ready():
	camera = $Camera3D
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * mouse_sensitivity)
		camera.rotate_x(-event.relative.y * mouse_sensitivity)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-80), deg_to_rad(80))
	if event.is_action_pressed("ui_accept"): # E鍵
		check_interact()
		
func _physics_process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("ui_up"): # W
		direction -= transform.basis.z
	if Input.is_action_pressed("ui_down"): # S
		direction += transform.basis.z
	if Input.is_action_pressed("ui_left"): # A
		direction -= transform.basis.x
	if Input.is_action_pressed("ui_right"): # D
		direction += transform.basis.x

	direction = direction.normalized()
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed

	# gravity
	if not is_on_floor():
		velocity.y -= gravity * delta

	move_and_slide()

func check_interact():
	var space = get_world_3d().direct_space_state
	var from = camera.global_transform.origin
	var to = from + camera.global_transform.basis.z * -3
	
	var query = PhysicsRayQueryParameters3D.create(from, to)
	var result = space.intersect_ray(query)
	
	if result:
		if result.collider.has_method("interact"):
			result.collider.interact()
