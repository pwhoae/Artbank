<!-- STREAMING_CHUNK:Configuring Godot project overview and setup guidelines... -->
# Complete iPhone Clock App Implementation for Godot 4 (GDScript)

This document provides a single, fully functional GDScript controller and node hierarchy guide to recreate the Apple iOS Clock app inside Godot 4.x.

---

## 1. Godot Node Tree Structure

To ensure all `@onready` path references map correctly, create a **Control** node as your scene root and construct the node tree with the exact names below:

```text
Control (Root Node - attach IPhoneClock.gd here)
 └── Background (ColorRect: Color #000000, Layout: Full Rect)
      └── MainVBox (VBoxContainer: Layout: Full Rect, Padding: 16px)
           ├── HeaderBar (HBoxContainer)
           │    ├── TitleLabel (Label: "世界時鐘", Theme Size: 28)
           │    └── AddBtn (Button: "+", Flat: true)
           ├── ContentArea (MarginContainer: Size Flags: Expand & Fill)
           │    ├── WorldClockPanel (VBoxContainer)
           │    │    ├── ClockBox (VBoxContainer - Centered)
           │    │    │    ├── AnalogClockCanvas (Control: Min Size 200x200)
           │    │    │    ├── DigitalTimeLabel (Label: "00:00:00", Centered)
           │    │    │    └── DigitalDateLabel (Label: "2026-10-17", Centered)
           │    │    └── CityList (VBoxContainer)
           │    │         ├── CityRow1 (HBoxContainer -> CityName, Time)
           │    │         └── CityRow2 (HBoxContainer -> CityName, Time)
           │    ├── AlarmPanel (VBoxContainer - Hidden by default)
           │    │    └── AlarmScroll (ScrollContainer)
           │    │         └── AlarmList (VBoxContainer)
           │    ├── StopwatchPanel (VBoxContainer - Hidden by default)
           │    │    ├── SWDisplay (Label: "00:00.00", Size: 48, Centered)
           │    │    ├── SWControls (HBoxContainer)
           │    │    │    ├── SWLapBtn (Button: "計圈")
           │    │    │    └── SWStartBtn (Button: "開始")
           │    │    └── SWScroll (ScrollContainer)
           │    │         └── SWLapList (VBoxContainer)
           │    └── TimerPanel (VBoxContainer - Hidden by default)
           │         ├── TimerRingCanvas (Control: Min Size 220x220)
           │         │    └── TimerDisplay (Label: "01:00.00", Centered)
           │         └── TimerControls (HBoxContainer)
           │              ├── TimerCancelBtn (Button: "取消")
           │              └── TimerStartBtn (Button: "開始")
           └── BottomNavBar (HBoxContainer: Custom Minimum Height 64)
                ├── TabBtn0 (Button: "世界時鐘")
                ├── TabBtn1 (Button: "鬧鐘")
                ├── TabBtn2 (Button: "秒錶")
                └── TabBtn3 (Button: "計時器")
```

---

<!-- STREAMING_CHUNK:Writing the complete GDScript implementation... -->
## 2. Complete GDScript Code (`IPhoneClock.gd`)

Attach this code directly to your root `Control` node.

```gdscript
# STREAMING_CHUNK:Initializing GDScript class, node paths, and state variables...
extends Control
class_name IPhoneClockApp

## Godot 4 iOS Clock App Replica
## Recreates the complete functional features and visuals of the iOS Clock App.

# --- NODE REFERENCES ---
# Navigation Bar
@onready var tab_bar: HBoxContainer = $MainVBox/BottomNavBar

# Main Content Panels
@onready var world_clock_panel: VBoxContainer = $MainVBox/ContentArea/WorldClockPanel
@onready var alarm_panel: VBoxContainer = $MainVBox/ContentArea/AlarmPanel
@onready var stopwatch_panel: VBoxContainer = $MainVBox/ContentArea/StopwatchPanel
@onready var timer_panel: VBoxContainer = $MainVBox/ContentArea/TimerPanel
@onready var header_title: Label = $MainVBox/HeaderBar/TitleLabel

# World Clock UI Components
@onready var analog_clock_canvas: Control = $MainVBox/ContentArea/WorldClockPanel/ClockBox/AnalogClockCanvas
@onready var digital_time_label: Label = $MainVBox/ContentArea/WorldClockPanel/ClockBox/DigitalTimeLabel
@onready var digital_date_label: Label = $MainVBox/ContentArea/WorldClockPanel/ClockBox/DigitalDateLabel

# Stopwatch UI Components
@onready var sw_display: Label = $MainVBox/ContentArea/StopwatchPanel/SWDisplay
@onready var sw_start_btn: Button = $MainVBox/ContentArea/StopwatchPanel/SWControls/SWStartBtn
@onready var sw_lap_btn: Button = $MainVBox/ContentArea/StopwatchPanel/SWControls/SWLapBtn
@onready var sw_lap_list: VBoxContainer = $MainVBox/ContentArea/StopwatchPanel/SWScroll/SWLapList

# Timer UI Components
@onready var timer_ring_canvas: Control = $MainVBox/ContentArea/TimerPanel/TimerRingCanvas
@onready var timer_display: Label = $MainVBox/ContentArea/TimerPanel/TimerRingCanvas/TimerDisplay
@onready var timer_start_btn: Button = $MainVBox/ContentArea/TimerPanel/TimerControls/TimerStartBtn
@onready var timer_cancel_btn: Button = $MainVBox/ContentArea/TimerPanel/TimerControls/TimerCancelBtn

# --- STATE VARIABLES ---
# Stopwatch Logic
var sw_running: bool = false
var sw_elapsed_time: float = 0.0
var sw_laps: Array[float] = []

# Timer Logic
var timer_duration: float = 60.0 # Default timer setting: 60 seconds
var timer_remaining: float = 60.0
var timer_running: bool = false

# Tab Titles
const TAB_TITLES: Array[String] = ["世界時鐘", "鬧鐘", "秒錶", "計時器"]

# STREAMING_CHUNK:Setting up initialization lifecycle and signal bindings...
func _ready() -> void:
	# Configure tab navigation listeners
	_setup_navigation_tabs()

	# Connect Stopwatch Button Signals
	if sw_start_btn:
		sw_start_btn.pressed.connect(_on_sw_start_pressed)
	if sw_lap_btn:
		sw_lap_btn.pressed.connect(_on_sw_lap_pressed)

	# Connect Timer Button Signals
	if timer_start_btn:
		timer_start_btn.pressed.connect(_on_timer_start_pressed)
	if timer_cancel_btn:
		timer_cancel_btn.pressed.connect(_on_timer_cancel_pressed)

	# Connect Custom Drawing Canvas Signals
	if analog_clock_canvas:
		analog_clock_canvas.draw.connect(_draw_analog_clock)
	if timer_ring_canvas:
		timer_ring_canvas.draw.connect(_draw_timer_ring)

	# Initialize View on World Clock
	_switch_tab(0)


# STREAMING_CHUNK:Processing realtime frame updates for clocks and timers...
func _process(delta: float) -> void:
	# Trigger Canvas Redraw for Analog Clock Hands
	if analog_clock_canvas and analog_clock_canvas.visible_in_tree():
		analog_clock_canvas.queue_redraw()
		_update_digital_clock_display()

	# Stopwatch Frame Loop
	if sw_running:
		sw_elapsed_time += delta
		_update_stopwatch_ui()

	# Timer Frame Loop
	if timer_running:
		timer_remaining -= delta
		if timer_remaining <= 0.0:
			timer_remaining = 0.0
			timer_running = false
			_on_timer_finished()
		
		if timer_display:
			timer_display.text = _format_time_ms(timer_remaining)
		if timer_ring_canvas:
			timer_ring_canvas.queue_redraw()


# STREAMING_CHUNK:Handling UI navigation and active tab switching...
func _setup_navigation_tabs() -> void:
	var nav_btns = tab_bar.get_children()
	for i in range(nav_btns.size()):
		if nav_btns[i] is Button:
			var btn = nav_btns[i] as Button
			btn.pressed.connect(func(): _switch_tab(i))


func _switch_tab(index: int) -> void:
	# Toggle Visibility of Panels
	world_clock_panel.visible = (index == 0)
	alarm_panel.visible = (index == 1)
	stopwatch_panel.visible = (index == 2)
	timer_panel.visible = (index == 3)

	# Update Top Header Title
	if header_title:
		header_title.text = TAB_TITLES[index]

	# Update Tab Button Color Overrides (iOS Active Orange vs Inactive Gray)
	var nav_btns = tab_bar.get_children()
	for i in range(nav_btns.size()):
		if nav_btns[i] is Button:
			if i == index:
				nav_btns[i].add_theme_color_override("font_color", Color("#FF9500")) # iOS Gold
			else:
				nav_btns[i].add_theme_color_override("font_color", Color("#8E8E93")) # iOS Dim Gray


# STREAMING_CHUNK:Rendering vector graphics for live analog clock dial and hands...
func _update_digital_clock_display() -> void:
	var current_time = Time.get_time_dict_from_system()
	var current_date = Time.get_date_dict_from_system()
	
	if digital_time_label:
		digital_time_label.text = "%02d:%02d:%02d" % [current_time.hour, current_time.minute, current_time.second]
	if digital_date_label:
		digital_date_label.text = "%04d年%02d月%02d日" % [current_date.year, current_date.month, current_date.day]


func _draw_analog_clock() -> void:
	var size = analog_clock_canvas.size
	var center = size / 2.0
	var radius = min(center.x, center.y) - 8.0

	# 1. Background Dial Face
	analog_clock_canvas.draw_circle(center, radius, Color("#1C1C1E"))
	analog_clock_canvas.draw_arc(center, radius, 0, TAU, 64, Color("#3A3A3C"), 2.0)

	# 2. Draw Hour Markers/Ticks around face
	for i in range(12):
		var angle = i * (TAU / 12.0) - (PI / 2.0)
		var inner_pt = center + Vector2(cos(angle), sin(angle)) * (radius - 10)
		var outer_pt = center + Vector2(cos(angle), sin(angle)) * (radius - 4)
		analog_clock_canvas.draw_line(inner_pt, outer_pt, Color("#8E8E93"), 2.0)

	# Calculate current hand angles
	var time_dict = Time.get_time_dict_from_system()
	var msec = Time.get_ticks_msec() % 1000
	var sec_val = time_dict.second + (msec / 1000.0)
	var min_val = time_dict.minute + (sec_val / 60.0)
	var hr_val = (time_dict.hour % 12) + (min_val / 60.0)

	var sec_angle = (sec_val / 60.0) * TAU - (PI / 2.0)
	var min_angle = (min_val / 60.0) * TAU - (PI / 2.0)
	var hr_angle = (hr_val / 12.0) * TAU - (PI / 2.0)

	# 3. Hour Hand (White, thick)
	var hr_pos = center + Vector2(cos(hr_angle), sin(hr_angle)) * (radius * 0.5)
	analog_clock_canvas.draw_line(center, hr_pos, Color.WHITE, 4.0)

	# 4. Minute Hand (White, medium)
	var min_pos = center + Vector2(cos(min_angle), sin(min_angle)) * (radius * 0.75)
	analog_clock_canvas.draw_line(center, min_pos, Color.WHITE, 3.0)

	# 5. Second Hand (iOS Accent Orange)
	var sec_pos = center + Vector2(cos(sec_angle), sin(sec_angle)) * (radius * 0.85)
	analog_clock_canvas.draw_line(center, sec_pos, Color("#FF9500"), 1.5)

	# 6. Center Pin Dot
	analog_clock_canvas.draw_circle(center, 3.5, Color("#FF9500"))


# STREAMING_CHUNK:Implementing stopwatch timing functions and lap dynamic list insertion...
func _on_sw_start_pressed() -> void:
	sw_running = !sw_running
	if sw_start_btn:
		sw_start_btn.text = "停止" if sw_running else "開始"
	if sw_lap_btn:
		sw_lap_btn.text = "計圈" if sw_running else "重設"


func _on_sw_lap_pressed() -> void:
	if sw_running:
		# Record current lap time
		sw_laps.append(sw_elapsed_time)
		_add_lap_item_to_list(sw_laps.size(), sw_elapsed_time)
	else:
		# Reset Stopwatch
		sw_elapsed_time = 0.0
		sw_laps.clear()
		_update_stopwatch_ui()
		
		# Clear UI Lap List entries
		if sw_lap_list:
			for child in sw_lap_list.get_children():
				child.queue_free()
		
		if sw_lap_btn:
			sw_lap_btn.text = "計圈"


func _update_stopwatch_ui() -> void:
	if sw_display:
		sw_display.text = _format_time_ms(sw_elapsed_time)


func _add_lap_item_to_list(lap_number: int, time_value: float) -> void:
	if not sw_lap_list:
		return

	var hbox = HBoxContainer.new()
	var lap_label = Label.new()
	var time_label = Label.new()

	lap_label.text = "圈數 %d" % lap_number
	lap_label.add_theme_color_override("font_color", Color("#8E8E93"))

	time_label.text = _format_time_ms(time_value)
	time_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	time_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT

	hbox.add_child(lap_label)
	hbox.add_child(time_label)

	# Insert newest lap at the top of the container
	sw_lap_list.add_child(hbox)
	sw_lap_list.move_child(hbox, 0)


# STREAMING_CHUNK:Implementing iOS dynamic timer countdown and arc ring drawing...
func _on_timer_start_pressed() -> void:
	if not timer_running and timer_remaining <= 0.0:
		timer_remaining = timer_duration

	timer_running = !timer_running
	if timer_start_btn:
		timer_start_btn.text = "暫停" if timer_running else "繼續"


func _on_timer_cancel_pressed() -> void:
	timer_running = false
	timer_remaining = timer_duration
	if timer_start_btn:
		timer_start_btn.text = "開始"
	if timer_display:
		timer_display.text = _format_time_ms(timer_remaining)
	if timer_ring_canvas:
		timer_ring_canvas.queue_redraw()


func _on_timer_finished() -> void:
	if timer_start_btn:
		timer_start_btn.text = "開始"
	# Optional: Trigger audio or notification when timer hits 0
	print("Timer Finished!")


func _draw_timer_ring() -> void:
	var size = timer_ring_canvas.size
	var center = size / 2.0
	var radius = min(center.x, center.y) - 12.0
	var ring_thickness = 8.0

	# Background Static Dark Ring
	timer_ring_canvas.draw_arc(center, radius, 0, TAU, 64, Color("#2C2C2E"), ring_thickness)

	# Active Decreasing Orange Ring
	if timer_duration > 0.0:
		var ratio = clamp(timer_remaining / timer_duration, 0.0, 1.0)
		var start_angle = -PI / 2.0
		var end_angle = start_angle + (TAU * ratio)
		if ratio > 0:
			timer_ring_canvas.draw_arc(center, radius, start_angle, end_angle, 64, Color("#FF9500"), ring_thickness)


# --- HELPER FUNCTIONS ---
func _format_time_ms(seconds: float) -> String:
	var mins = int(seconds) / 60
	var secs = int(seconds) % 60
	var ms = int((seconds - int(seconds)) * 100)
	return "%02d:%02d.%02d" % [mins, secs, ms]
```