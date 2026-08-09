class_name OptionWheel
extends Control

signal option_changed(index: int, item: String)
signal option_clicked(index: int, item: String)

@export var items: Array[String] = ["Ambient", "House", "Techno", "Jazz", "Lo-Fi", "Synthwave"]
@export var default_selected: int = 2
@export var text_color: Color = Color("a6a6a6")
@export var active_color: Color = Color("ffffff")
@export var font_size: int = 36
@export var spacing: float = 1.4
@export var curve: float = 1.0
@export var tilt_degrees: float = 6.0
@export var fade: float = 0.25
@export var min_opacity: float = 0.05
@export var smoothing: float = 20.0 # Interpolation speed
@export var inset_x: float = 80.0
@export var loop: bool = false
@export var draggable: bool = true

var selected_index: int = 0
var current_pos: float = 0.0
var target_pos: float = 0.0

var _buttons: Array[Button] = []
var _audio_player: AudioStreamPlayer
var _is_dragging: bool = false
var _drag_start_y: float = 0.0
var _drag_start_target: float = 0.0
var _has_dragged: bool = false

func _ready() -> void:
	clip_contents = true
	mouse_filter = MOUSE_FILTER_STOP
	
	_audio_player = AudioStreamPlayer.new()
	add_child(_audio_player)
	
	setup_items()
	set_selected(default_selected, true)

func setup_items() -> void:
	for btn in _buttons:
		btn.queue_free()
	_buttons.clear()

	for i in range(items.size()):
		var btn = Button.new()
		btn.text = items[i]
		btn.flat = true
		btn.focus_mode = FOCUS_NONE
		btn.add_theme_font_size_override("font_size", font_size)
		btn.add_theme_color_override("font_color", text_color)
		btn.add_theme_color_override("font_hover_color", active_color)
		btn.add_theme_color_override("font_pressed_color", active_color)
		btn.add_theme_stylebox_override("normal", StyleBoxEmpty.new())
		btn.add_theme_stylebox_override("hover", StyleBoxEmpty.new())
		btn.add_theme_stylebox_override("pressed", StyleBoxEmpty.new())
		btn.add_theme_stylebox_override("focus", StyleBoxEmpty.new())
		
		# Allow drag gestures to pass through to the parent container
		btn.mouse_filter = MOUSE_FILTER_PASS
		
		btn.pressed.connect(_on_button_pressed.bind(i))
		add_child(btn)
		_buttons.append(btn)

func set_selected(index: int, immediate: bool = false) -> void:
	if items.is_empty():
		return
	target_pos = clamp(index, 0, items.size() - 1) if not loop else index
	if immediate:
		current_pos = target_pos
	_update_selection(round(target_pos))

func _process(delta: float) -> void:
	if items.is_empty():
		return
		
	# Smoothly ease toward target position
	current_pos = lerp(current_pos, target_pos, smoothing * delta)
	if abs(target_pos - current_pos) < 0.001:
		current_pos = target_pos
		
	_layout_items()

func _layout_items() -> void:
	var count = items.size()
	var row_h = font_size * spacing
	var center_y = size.y / 2.0
	var tilt_rad = deg_to_rad(tilt_degrees)
	var radius = (row_h / tilt_rad) if tilt_rad > 0.0005 else 0.0

	for i in range(count):
		var btn = _buttons[i]
		var d = float(i) - current_pos
		
		if loop and count > 1:
			d = fmod(d, count)
			if d > count / 2.0: d -= count
			elif d < -count / 2.0: d += count

		var dist = abs(d)
		var x = inset_x
		var y = center_y + (d * row_h)
		var rot_deg = 0.0

		if radius > 0.0:
			var angle = clamp(d * tilt_rad, -PI / 2.0, PI / 2.0)
			y = center_y + (radius * sin(angle))
			x = inset_x - (radius * (1.0 - cos(angle)) * curve)
			rot_deg = rad_to_deg(angle)

		btn.pivot_offset = Vector2(0, btn.size.y / 2.0)
		btn.position = Vector2(x, y - (btn.size.y / 2.0))
		btn.rotation_degrees = rot_deg
		
		# Fade and highlight active item
		var opacity = max(min_opacity, 1.0 - (dist * fade))
		btn.modulate.a = opacity
		
		var active_weight = clamp(1.0 - dist, 0.0, 1.0)
		btn.add_theme_color_override("font_color", text_color.lerp(active_color, active_weight))

func _gui_input(event: InputEvent) -> void:
	if items.is_empty():
		return

	# Mouse wheel / touchpad scroll
	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				_step_target(-1)
			elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				_step_target(1)
			elif event.button_index == MOUSE_BUTTON_LEFT and draggable:
				_is_dragging = true
				_has_dragged = false
				_drag_start_y = event.position.y
				_drag_start_target = target_pos
		elif event.button_index == MOUSE_BUTTON_LEFT and _is_dragging:
			_is_dragging = false
			target_pos = round(target_pos)

	# Drag gesture
	elif event is InputEventMouseMotion and _is_dragging:
		var delta_y = event.position.y - _drag_start_y
		if abs(delta_y) > 4.0:
			_has_dragged = true
		var row_h = font_size * spacing
		var steps = delta_y / row_h
		_apply_target(_drag_start_target - steps, false)

	# Key navigation
	elif event is InputEventKey and event.is_pressed():
		if event.keycode == KEY_UP:
			_step_target(-1)
		elif event.keycode == KEY_DOWN:
			_step_target(1)

func _on_button_pressed(index: int) -> void:
	# Ignore button clicks triggered during drag gestures
	if _has_dragged:
		return
	print(_buttons[index].name)
	_apply_target(index, true)
	option_clicked.emit(index, items[index])

func _step_target(step: int) -> void:
	_apply_target(round(target_pos) + step, true)

func _apply_target(val: float, snap: bool) -> void:
	var count = items.size()
	if not loop:
		val = clamp(val, 0.0, count - 1)
	if snap:
		val = round(val)
		
	target_pos = val
	var idx = wrapi(int(round(val)), 0, count)
	
	if idx != selected_index:
		_update_selection(idx)

func _update_selection(new_index: int) -> void:
	if new_index < 0 or new_index >= items.size():
		return
	selected_index = new_index
	option_changed.emit(selected_index, items[selected_index])
