extends Node3D

var is_open = false
var target_rotation = 0.0

func _process(delta):
	rotation.y = lerp(rotation.y, target_rotation, 0.1)

func interact():
	is_open = !is_open
	if is_open:
		target_rotation = deg_to_rad(90)
	else:
		target_rotation = 0
