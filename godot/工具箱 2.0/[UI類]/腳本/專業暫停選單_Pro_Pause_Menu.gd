extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

func _on_resume_pressed():
	hide()
	get_tree().paused = false
	if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:Input.mouse_mode = Input.MOUSE_MODE_VISIBLE;
	else:Input.mouse_mode = Input.MOUSE_MODE_CAPTURED;
	

func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_settings_pressed():
	# TODO: 開啟設定頁
	pass

func _on_quit_pressed():
	get_tree().paused = false
	get_tree().quit()
