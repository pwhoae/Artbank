# ==============================================================================
# Apple UI Motion Lab - Godot 4.x GDScript 實作
# 包含 Apple 經典物理彈簧動畫、UI 互動與即時參數調校工具
# ==============================================================================
extends Control

# --- 運動效果資料集 ---
const MOTION_EFFECTS: Array[Dictionary] = [
	{
		"id": "dynamic-island",
		"title": "動態島流體形變 (Dynamic Island Morphing)",
		"category": "system",
		"category_label": "系統層級與過渡",
		"desc": "黑色的幾何圖形以極高彈性與黏滯感進行形變（包含分化、合併、拉伸）。經典 iOS 高剛性彈簧體驗。",
		"instruction": "點擊切換「極簡膠囊」、「音樂播控」與「通話模式」狀態"
	},
	{
		"id": "context-menu",
		"title": "長按選單焦點放大與高斯模糊 (Context Menu Blur)",
		"category": "system",
		"category_label": "系統層級與過渡",
		"desc": "長按目標元件時，元件突出放大並伴隨震動，背景套用模糊，並彈出快捷選單。",
		"instruction": "點擊卡片觸發 3D 彈性放大與選單展開動效"
	},
	{
		"id": "vision-hover",
		"title": "VisionOS 空間懸停光暈與視差 (Spatial Hover Light)",
		"category": "spatial",
		"category_label": "空間與視覺質感",
		"desc": "滑鼠懸停在半透明玻璃卡片時，卡片表面產生跟隨游標的光暈與三維空間傾斜視差。",
		"instruction": "在卡片上移動滑鼠觀察光束跟隨與 3D 空間傾斜"
	},
	{
		"id": "siri-glow",
		"title": "Siri 全螢幕邊框流體光束 (Siri Glow Border Wave)",
		"category": "spatial",
		"category_label": "空間與視覺質感",
		"desc": "喚醒 Siri 時，螢幕四周邊框湧現多色融合的動態流體光束與波紋起伏。",
		"instruction": "點擊語音按鈕觸發 Siri 邊框炫光頻譜動效"
	},
	{
		"id": "control-slider",
		"title": "控制中心滑塊與拉伸變形 (Control Center Slider)",
		"category": "micro",
		"category_label": "微互動與組件變形",
		"desc": "拖動亮度條時，滑塊隨拉伸產生微微的流體變形；達到頂部或底部時產生彈性擠壓感。",
		"instruction": "上下拖動亮度膠囊滑塊，體驗邊界橡皮筋彈性"
	},
	{
		"id": "action-hud",
		"title": "Action Button 動作按鈕頂部狀態 HUD",
		"category": "micro",
		"category_label": "微互動與組件變形",
		"desc": "長按動作按鈕時，螢幕頂部 HUD 隨按壓時間逐漸充填，達到臨界點時產生彈性擴充。",
		"instruction": "長按右側「動作按鈕」，體驗壓力進度條與頂部 HUD 的彈性擴充"
	},
	{
		"id": "jiggle-mode",
		"title": "主畫面編輯 Mode「抖動」效果 (Jiggle Mode)",
		"category": "micro",
		"category_label": "微互動與組件變形",
		"desc": "進入編輯模式時，所有 App 圖示以微小角度變化與相位偏差進行隨機抖動。",
		"instruction": "點擊開關切換 iOS 主畫面 Shake/Jiggle 編輯模式"
	},
	{
		"id": "typography-morph",
		"title": "數字/文字滾動流體變形 (Morphing Typography)",
		"category": "micro",
		"category_label": "微互動與組件變形",
		"desc": "當數值改變時，數字以垂直縮放與位移過渡至新數字，展現彈性文字滾動。",
		"instruction": "點擊 +/- 按鈕調整數值，觀察數字平滑滾動與彈性動畫"
	}
]

# --- 狀態變數 ---
var current_effect_index: int = 0
var active_category: String = "all"
var current_duration: float = 0.45
var current_damping: float = 0.82
var current_blur: float = 20.0

# --- UI 節點引用 ---
var effect_list_container: VBoxContainer
var stage_container: Control
var title_label: Label
var desc_label: Label
var category_badge: Label
var instruction_label: Label
var code_text_edit: TextEdit
var duration_slider: HSlider
var duration_val_label: Label
var damping_slider: HSlider
var damping_val_label: Label
var blur_slider: HSlider
var blur_val_label: Label
var preset_option_button: OptionButton
var toast_panel: PanelContainer
var toast_label: Label
var toast_timer: Timer

# --- 動態元件狀態引用 ---
var active_demo_node: Control = null
var current_tween: Tween = null
var jiggle_timer: float = 0.0
var is_jiggling: bool = false
var jiggle_items: Array[Control] = []

# ==============================================================================
# 生命週期函式
# ==============================================================================
func _ready() -> void:
	anchor_right = 1.0
	anchor_bottom = 1.0
	_build_ui_layout()
	_render_sidebar()
	_load_effect_demo(0)
	_update_code_snippet()

func _process(delta: float) -> void:
	if is_jiggling and jiggle_items.size() > 0:
		jiggle_timer += delta * 15.0
		for i in range(jiggle_items.size()):
			var item = jiggle_items[i]
			item.rotation = sin(jiggle_timer + i * 1.5) * 0.05

# ==============================================================================
# UI 介面動態構建
# ==============================================================================
func _build_ui_layout() -> void:
	# 主背景 Panel
	var bg = Panel.new()
	bg.anchor_right = 1.0
	bg.anchor_bottom = 1.0
	var bg_style = StyleBoxFlat.new()
	bg_style.bg_color = Color(0.02, 0.02, 0.03)
	bg.add_theme_stylebox_override("panel", bg_style)
	add_child(bg)

	# 主垂直佈局
	var main_vbox = VBoxContainer.new()
	main_vbox.anchor_right = 1.0
	main_vbox.anchor_bottom = 1.0
	main_vbox.add_theme_constant_override("separation", 0)
	add_child(main_vbox)

	# --- 頂部 Header Bar ---
	var header = PanelContainer.new()
	var header_style = StyleBoxFlat.new()
	header_style.bg_color = Color(0.08, 0.08, 0.1, 0.9)
	header_style.border_width_bottom = 1
	header_style.border_color = Color(1, 1, 1, 0.1)
	header_style.content_margin_left = 20
	header_style.content_margin_right = 20
	header_style.content_margin_top = 10
	header_style.content_margin_bottom = 10
	header.add_theme_stylebox_override("panel", header_style)

	var header_hbox = HBoxContainer.new()
	var title_vbox = VBoxContainer.new()

	var app_title = Label.new()
	app_title.text = "Apple UI Motion Lab (Godot 4 Engine)"
	app_title.add_theme_font_size_override("font_size", 16)
	app_title.add_theme_color_override("font_color", Color.WHITE)

	var app_sub = Label.new()
	app_sub.text = "經典動效、物理彈簧與微互動可視化調校工具"
	app_sub.add_theme_font_size_override("font_size", 11)
	app_sub.add_theme_color_override("font_color", Color(0.6, 0.6, 0.65))

	title_vbox.add_child(app_title)
	title_vbox.add_child(app_sub)
	header_hbox.add_child(title_vbox)

	var spacer = Control.new()
	spacer.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	header_hbox.add_child(spacer)

	# 頂部按鈕
	var reset_btn = Button.new()
	reset_btn.text = "↺ 重設參數"
	reset_btn.pressed.connect(_on_reset_params_pressed)
	header_hbox.add_child(reset_btn)

	var copy_btn = Button.new()
	copy_btn.text = "📋 複製 GDScript 彈簧代碼"
	copy_btn.pressed.connect(_on_copy_code_pressed)
	header_hbox.add_child(copy_btn)

	header.add_child(header_hbox)
	main_vbox.add_child(header)

	# --- 內容分割區域 (Split Sidebar & Main Stage) ---
	var content_split = HBoxContainer.new()
	content_split.size_flags_vertical = Control.SIZE_EXPAND_FILL
	content_split.add_theme_constant_override("separation", 0)

	# 左側側邊欄 Sidebar
	var sidebar = PanelContainer.new()
	sidebar.custom_minimum_size.x = 280
	var sidebar_style = StyleBoxFlat.new()
	sidebar_style.bg_color = Color(0.05, 0.05, 0.07, 0.9)
	sidebar_style.border_width_right = 1
	sidebar_style.border_color = Color(1, 1, 1, 0.1)
	sidebar_style.content_margin_left = 12
	sidebar_style.content_margin_right = 12
	sidebar_style.content_margin_top = 12
	sidebar_style.content_margin_bottom = 12
	sidebar.add_theme_stylebox_override("panel", sidebar_style)

	var sidebar_vbox = VBoxContainer.new()
	sidebar_vbox.add_theme_constant_override("separation", 10)

	# 分類過濾按鈕
	var filter_hbox = HBoxContainer.new()
	var cat_all_btn = Button.new()
	cat_all_btn.text = "全部"
	cat_all_btn.pressed.connect(func(): _filter_category("all"))
	filter_hbox.add_child(cat_all_btn)

	var cat_sys_btn = Button.new()
	cat_sys_btn.text = "系統"
	cat_sys_btn.pressed.connect(func(): _filter_category("system"))
	filter_hbox.add_child(cat_sys_btn)

	var cat_spat_btn = Button.new()
	cat_spat_btn.text = "空間"
	cat_spat_btn.pressed.connect(func(): _filter_category("spatial"))
	filter_hbox.add_child(cat_spat_btn)

	var cat_micro_btn = Button.new()
	cat_micro_btn.text = "微互動"
	cat_micro_btn.pressed.connect(func(): _filter_category("micro"))
	filter_hbox.add_child(cat_micro_btn)

	sidebar_vbox.add_child(filter_hbox)

	# 效果列表滾動區域
	var scroll = ScrollContainer.new()
	scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	scroll.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED

	effect_list_container = VBoxContainer.new()
	effect_list_container.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	effect_list_container.add_theme_constant_override("separation", 6)
	scroll.add_child(effect_list_container)
	sidebar_vbox.add_child(scroll)

	sidebar.add_child(sidebar_vbox)
	content_split.add_child(sidebar)

	# 右側主展示舞台 (Main Stage)
	var stage_main_vbox = VBoxContainer.new()
	stage_main_vbox.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	stage_main_vbox.add_theme_constant_override("separation", 16)

	var stage_margin = MarginContainer.new()
	stage_margin.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	stage_margin.size_flags_vertical = Control.SIZE_EXPAND_FILL
	stage_margin.add_theme_constant_override("margin_left", 20)
	stage_margin.add_theme_constant_override("margin_top", 20)
	stage_margin.add_theme_constant_override("margin_right", 20)
	stage_margin.add_theme_constant_override("margin_bottom", 20)

	var stage_grid = HBoxContainer.new()
	stage_grid.size_flags_vertical = Control.SIZE_EXPAND_FILL
	stage_grid.add_theme_constant_override("separation", 16)

	# 左 70%: 畫布展示區
	var canvas_panel = PanelContainer.new()
	canvas_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	canvas_panel.size_flags_stretch_ratio = 2.0
	var canvas_style = StyleBoxFlat.new()
	canvas_style.bg_color = Color(0.04, 0.04, 0.06, 0.95)
	canvas_style.corner_radius_top_left = 16
	canvas_style.corner_radius_top_right = 16
	canvas_style.corner_radius_bottom_left = 16
	canvas_style.corner_radius_bottom_right = 16
	canvas_style.border_width_left = 1
	canvas_style.border_width_top = 1
	canvas_style.border_width_right = 1
	canvas_style.border_width_bottom = 1
	canvas_style.border_color = Color(1, 1, 1, 0.1)
	canvas_panel.add_theme_stylebox_override("panel", canvas_style)

	var canvas_vbox = VBoxContainer.new()
	canvas_vbox.add_theme_constant_override("separation", 10)

	# 效果標題與描述 Header
	var info_vbox = VBoxContainer.new()
	info_vbox.add_theme_constant_override("separation", 4)

	category_badge = Label.new()
	category_badge.text = "系統層級與過渡"
	category_badge.add_theme_font_size_override("font_size", 10)
	category_badge.add_theme_color_override("font_color", Color(0.3, 0.7, 1.0))

	title_label = Label.new()
	title_label.text = "標題加載中..."
	title_label.add_theme_font_size_override("font_size", 18)
	title_label.add_theme_color_override("font_color", Color.WHITE)

	desc_label = Label.new()
	desc_label.text = "描述加載中..."
	desc_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	desc_label.add_theme_font_size_override("font_size", 12)
	desc_label.add_theme_color_override("font_color", Color(0.7, 0.7, 0.75))

	info_vbox.add_child(category_badge)
	info_vbox.add_child(title_label)
	info_vbox.add_child(desc_label)

	var info_margin = MarginContainer.new()
	info_margin.add_theme_constant_override("margin_left", 16)
	info_margin.add_theme_constant_override("margin_top", 16)
	info_margin.add_theme_constant_override("margin_right", 16)
	info_margin.add_child(info_vbox)
	canvas_vbox.add_child(info_margin)

	# 互動畫布容器 Stage
	stage_container = Control.new()
	stage_container.size_flags_vertical = Control.SIZE_EXPAND_FILL
	stage_container.custom_minimum_size.y = 320
	canvas_vbox.add_child(stage_container)

	# 底部操作提示 Badge
	instruction_label = Label.new()
	instruction_label.text = "💡 點擊上方的元件以體驗互動動效"
	instruction_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	instruction_label.add_theme_font_size_override("font_size", 11)
	instruction_label.add_theme_color_override("font_color", Color(0.5, 0.5, 0.55))

	var inst_margin = MarginContainer.new()
	inst_margin.add_theme_constant_override("margin_bottom", 12)
	inst_margin.add_child(instruction_label)
	canvas_vbox.add_child(inst_margin)

	canvas_panel.add_child(canvas_vbox)
	stage_grid.add_child(canvas_panel)

	# 右 30%: 物理控制面板與腳本預覽
	var controls_panel = PanelContainer.new()
	controls_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	controls_panel.size_flags_stretch_ratio = 1.0
	var ctrl_style = StyleBoxFlat.new()
	ctrl_style.bg_color = Color(0.06, 0.06, 0.08, 0.9)
	ctrl_style.corner_radius_top_left = 16
	ctrl_style.corner_radius_top_right = 16
	ctrl_style.corner_radius_bottom_left = 16
	ctrl_style.corner_radius_bottom_right = 16
	ctrl_style.border_width_left = 1
	ctrl_style.border_width_top = 1
	ctrl_style.border_width_right = 1
	ctrl_style.border_width_bottom = 1
	ctrl_style.border_color = Color(1, 1, 1, 0.1)
	ctrl_style.content_margin_left = 16
	ctrl_style.content_margin_top = 16
	ctrl_style.content_margin_right = 16
	ctrl_style.content_margin_bottom = 16
	controls_panel.add_theme_stylebox_override("panel", ctrl_style)

	var ctrl_vbox = VBoxContainer.new()
	ctrl_vbox.add_theme_constant_override("separation", 14)

	var ctrl_header = Label.new()
	ctrl_header.text = "物理與時間調校 (PHYSICS)"
	ctrl_header.add_theme_font_size_override("font_size", 12)
	ctrl_header.add_theme_color_override("font_color", Color.WHITE)
	ctrl_vbox.add_child(ctrl_header)

	# 預設彈簧 Preset
	var preset_vbox = VBoxContainer.new()
	var preset_lbl = Label.new()
	preset_lbl.text = "Apple 彈簧預設值 (Spring Preset)"
	preset_lbl.add_theme_font_size_override("font_size", 10)
	preset_lbl.add_theme_color_override("font_color", Color(0.6, 0.6, 0.65))

	preset_option_button = OptionButton.new()
	preset_option_button.add_item("Apple Standard (高剛性低阻尼)")
	preset_option_button.add_item("Bouncy Expressive (強彈性)")
	preset_option_button.add_item("Gentle Dynamic (柔和流體)")
	preset_option_button.add_item("Snappy Response (快速響應)")
	preset_option_button.item_selected.connect(_on_preset_selected)

	preset_vbox.add_child(preset_lbl)
	preset_vbox.add_child(preset_option_button)
	ctrl_vbox.add_child(preset_vbox)

	# Duration Slider
	var dur_vbox = VBoxContainer.new()
	var dur_hbox = HBoxContainer.new()
	var dur_title = Label.new()
	dur_title.text = "持續時間 (Duration)"
	dur_title.add_theme_font_size_override("font_size", 11)
	dur_title.add_theme_color_override("font_color", Color(0.7, 0.7, 0.7))

	duration_val_label = Label.new()
	duration_val_label.text = "0.45s"
	duration_val_label.add_theme_font_size_override("font_size", 11)
	duration_val_label.add_theme_color_override("font_color", Color(0.3, 0.7, 1.0))

	dur_hbox.add_child(dur_title)
	var dur_spacer = Control.new()
	dur_spacer.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	dur_hbox.add_child(dur_spacer)
	dur_hbox.add_child(duration_val_label)

	duration_slider = HSlider.new()
	duration_slider.min_value = 0.1
	duration_slider.max_value = 1.5
	duration_slider.step = 0.05
	duration_slider.value = 0.45
	duration_slider.value_changed.connect(_on_duration_changed)

	dur_vbox.add_child(dur_hbox)
	dur_vbox.add_child(duration_slider)
	ctrl_vbox.add_child(dur_vbox)

	# Damping Slider
	var damp_vbox = VBoxContainer.new()
	var damp_hbox = HBoxContainer.new()
	var damp_title = Label.new()
	damp_title.text = "阻尼比 (Damping Ratio)"
	damp_title.add_theme_font_size_override("font_size", 11)
	damp_title.add_theme_color_override("font_color", Color(0.7, 0.7, 0.7))

	damping_val_label = Label.new()
	damping_val_label.text = "0.82"
	damping_val_label.add_theme_font_size_override("font_size", 11)
	damping_val_label.add_theme_color_override("font_color", Color(0.3, 0.7, 1.0))

	damp_hbox.add_child(damp_title)
	var damp_spacer = Control.new()
	damp_spacer.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	damp_hbox.add_child(damp_spacer)
	damp_hbox.add_child(damping_val_label)

	damping_slider = HSlider.new()
	damping_slider.min_value = 0.2
	damping_slider.max_value = 1.5
	damping_slider.step = 0.02
	damping_slider.value = 0.82
	damping_slider.value_changed.connect(_on_damping_changed)

	damp_vbox.add_child(damp_hbox)
	damp_vbox.add_child(damping_slider)
	ctrl_vbox.add_child(damp_vbox)

	# Blur Intensity Slider
	var blur_vbox = VBoxContainer.new()
	var blur_hbox = HBoxContainer.new()
	var blur_title = Label.new()
	blur_title.text = "背景模糊強度 (Blur)"
	blur_title.add_theme_font_size_override("font_size", 11)
	blur_title.add_theme_color_override("font_color", Color(0.7, 0.7, 0.7))

	blur_val_label = Label.new()
	blur_val_label.text = "20px"
	blur_val_label.add_theme_font_size_override("font_size", 11)
	blur_val_label.add_theme_color_override("font_color", Color(0.3, 0.7, 1.0))

	blur_hbox.add_child(blur_title)
	var blur_spacer = Control.new()
	blur_spacer.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	blur_hbox.add_child(blur_spacer)
	blur_hbox.add_child(blur_val_label)

	blur_slider = HSlider.new()
	blur_slider.min_value = 0.0
	blur_slider.max_value = 40.0
	blur_slider.step = 1.0
	blur_slider.value = 20.0
	blur_slider.value_changed.connect(_on_blur_changed)

	blur_vbox.add_child(blur_hbox)
	blur_vbox.add_child(blur_slider)
	ctrl_vbox.add_child(blur_vbox)

	# 即時 GDScript 代碼框
	var code_header = Label.new()
	code_header.text = "生成 GDScript Tween 代碼"
	code_header.add_theme_font_size_override("font_size", 11)
	code_header.add_theme_color_override("font_color", Color.WHITE)
	ctrl_vbox.add_child(code_header)

	code_text_edit = TextEdit.new()
	code_text_edit.size_flags_vertical = Control.SIZE_EXPAND_FILL
	code_text_edit.custom_minimum_size.y = 120
	code_text_edit.editable = false
	code_text_edit.add_theme_font_size_override("font_size", 11)
	code_text_edit.add_theme_color_override("font_color", Color(0.6, 0.85, 1.0))
	ctrl_vbox.add_child(code_text_edit)

	controls_panel.add_child(ctrl_vbox)
	stage_grid.add_child(controls_panel)

	stage_margin.add_child(stage_grid)
	stage_main_vbox.add_child(stage_margin)
	content_split.add_child(stage_main_vbox)

	main_vbox.add_child(content_split)

	# Toast Notification Container
	toast_panel = PanelContainer.new()
	toast_panel.visible = false
	var toast_style = StyleBoxFlat.new()
	toast_style.bg_color = Color(0.1, 0.1, 0.15, 0.95)
	toast_style.border_color = Color(0.2, 0.6, 1.0, 0.5)
	toast_style.border_width_left = 1
	toast_style.border_width_top = 1
	toast_style.border_width_right = 1
	toast_style.border_width_bottom = 1
	toast_style.corner_radius_top_left = 12
	toast_style.corner_radius_top_right = 12
	toast_style.corner_radius_bottom_left = 12
	toast_style.corner_radius_bottom_right = 12
	toast_style.content_margin_left = 16
	toast_style.content_margin_right = 16
	toast_style.content_margin_top = 10
	toast_style.content_margin_bottom = 10
	toast_panel.add_theme_stylebox_override("panel", toast_style)

	toast_label = Label.new()
	toast_label.text = "通知訊息"
	toast_label.add_theme_font_size_override("font_size", 11)
	toast_label.add_theme_color_override("font_color", Color.WHITE)
	toast_panel.add_child(toast_label)

	add_child(toast_panel)

	toast_timer = Timer.new()
	toast_timer.one_shot = true
	toast_timer.timeout.connect(func(): toast_panel.visible = false)
	add_child(toast_timer)

# ==============================================================================
# UI 選單繪製與動效載入
# ==============================================================================
func _render_sidebar() -> void:
	for child in effect_list_container.get_children():
		child.queue_free()

	for i in range(MOTION_EFFECTS.size()):
		var effect = MOTION_EFFECTS[i]
		if active_category != "all" and effect["category"] != active_category:
			continue
			
		var is_selected = i == current_effect_index
		var btn = Button.new()
		btn.text = effect["title"]
		btn.alignment = HORIZONTAL_ALIGNMENT_LEFT
		btn.clip_text = true
		btn.custom_minimum_size.y = 36
		btn.pressed.connect(func(): 
			current_effect_index = i
			_render_sidebar()
			_load_effect_demo(i)
		)
		
		var btn_style = StyleBoxFlat.new()
		if is_selected:
			btn_style.bg_color = Color(0.1, 0.35, 0.8, 0.6)
			btn_style.border_color = Color(0.3, 0.6, 1.0, 0.8)
			btn_style.border_width_left = 2
		else:
			btn_style.bg_color = Color(1, 1, 1, 0.04)
		btn_style.corner_radius_top_left = 8
		btn_style.corner_radius_top_right = 8
		btn_style.corner_radius_bottom_left = 8
		btn_style.corner_radius_bottom_right = 8
		btn.add_theme_stylebox_override("normal", btn_style)
		
		effect_list_container.add_child(btn)

func _load_effect_demo(index: int) -> void:
	var effect = MOTION_EFFECTS[index]
	title_label.text = effect["title"]
	desc_label.text = effect["desc"]
	category_badge.text = effect["category_label"]
	instruction_label.text = "💡 " + effect["instruction"]

	# 清除舊展示
	if is_instance_valid(active_demo_node):
		active_demo_node.queue_free()
	is_jiggling = false
	jiggle_items.clear()

	# 動態建立展示節點
	var demo_id = effect["id"]
	match demo_id:
		"dynamic-island":
			active_demo_node = _build_dynamic_island_demo()
		"context-menu":
			active_demo_node = _build_context_menu_demo()
		"vision-hover":
			active_demo_node = _build_vision_hover_demo()
		"siri-glow":
			active_demo_node = _build_siri_glow_demo()
		"control-slider":
			active_demo_node = _build_control_slider_demo()
		"action-hud":
			active_demo_node = _build_action_hud_demo()
		"jiggle-mode":
			active_demo_node = _build_jiggle_mode_demo()
		"typography-morph":
			active_demo_node = _build_typography_morph_demo()
		_:
			active_demo_node = Control.new()
			
	stage_container.add_child(active_demo_node)

# ==============================================================================
# 各類動效 DEMO 元件選單與構建邏輯
# ==============================================================================
# 1. Dynamic Island Morphing
func _build_dynamic_island_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 20)

	var island = PanelContainer.new()
	island.custom_minimum_size = Vector2(200, 38)
	island.pivot_offset = Vector2(100, 19)
	var style = StyleBoxFlat.new()
	style.bg_color = Color.BLACK
	style.corner_radius_top_left = 19
	style.corner_radius_top_right = 19
	style.corner_radius_bottom_left = 19
	style.corner_radius_bottom_right = 19
	style.border_color = Color(1, 1, 1, 0.2)
	style.border_width_left = 1
	style.border_width_top = 1
	style.border_width_right = 1
	style.border_width_bottom = 1
	island.add_theme_stylebox_override("panel", style)

	var label = Label.new()
	label.text = "🟢 通話中  02:45"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 12)
	island.add_child(label)

	vbox.add_child(island)

	var btn_hbox = HBoxContainer.new()
	btn_hbox.add_theme_constant_override("separation", 8)

	var b1 = Button.new()
	b1.text = "極簡膠囊"
	b1.pressed.connect(func():
		_animate_island(island, style, label, Vector2(200, 38), 19, "🟢 通話中  02:45")
	)

	var b2 = Button.new()
	b2.text = "展開音樂"
	b2.pressed.connect(func():
		_animate_island(island, style, label, Vector2(300, 100), 28, "🎵 Apple Music\nStarboy - The Weeknd")
	)

	var b3 = Button.new()
	b3.text = "長條狀態"
	b3.pressed.connect(func():
		_animate_island(island, style, label, Vector2(260, 44), 22, "🎙️ 語音備忘錄 錄音中...")
	)

	btn_hbox.add_child(b1)
	btn_hbox.add_child(b2)
	btn_hbox.add_child(b3)
	vbox.add_child(btn_hbox)

	root.add_child(vbox)
	return root

func _animate_island(island: PanelContainer, style: StyleBoxFlat, label: Label, target_size: Vector2, radius: int, text: String) -> void:
	if current_tween:
		current_tween.kill()
	current_tween = create_tween().set_parallel(true)
	current_tween.set_trans(Tween.TRANS_SPRING)
	current_tween.set_ease(Tween.EASE_OUT)

	current_tween.tween_property(island, "custom_minimum_size", target_size, current_duration)
	current_tween.tween_property(style, "corner_radius_top_left", radius, current_duration)
	current_tween.tween_property(style, "corner_radius_top_right", radius, current_duration)
	current_tween.tween_property(style, "corner_radius_bottom_left", radius, current_duration)
	current_tween.tween_property(style, "corner_radius_bottom_right", radius, current_duration)

	label.text = text

# 2. VisionOS Spatial Hover
func _build_vision_hover_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var card = PanelContainer.new()
	card.custom_minimum_size = Vector2(280, 160)
	card.pivot_offset = Vector2(140, 80)

	var style = StyleBoxFlat.new()
	style.bg_color = Color(0.12, 0.12, 0.18, 0.8)
	style.border_color = Color(1, 1, 1, 0.2)
	style.border_width_left = 1
	style.border_width_top = 1
	style.border_width_right = 1
	style.border_width_bottom = 1
	style.corner_radius_top_left = 20
	style.corner_radius_top_right = 20
	style.corner_radius_bottom_left = 20
	style.corner_radius_bottom_right = 20
	card.add_theme_stylebox_override("panel", style)

	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 10)

	var lbl = Label.new()
	lbl.text = "VisionOS 空間卡片"
	lbl.add_theme_font_size_override("font_size", 16)
	lbl.add_theme_color_override("font_color", Color.WHITE)

	var desc = Label.new()
	desc.text = "移動滑鼠觀察三維視差懸停與縮放效果"
	desc.add_theme_font_size_override("font_size", 11)
	desc.add_theme_color_override("font_color", Color(0.7, 0.7, 0.8))

	vbox.add_child(lbl)
	vbox.add_child(desc)
	card.add_child(vbox)

	card.gui_input.connect(func(event: InputEvent):
		if event is InputEventMouseMotion:
			var mouse_pos = event.position
			var center = card.size / 2.0
			var offset = (mouse_pos - center) / center
			
			var tw = create_tween().set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
			tw.tween_property(card, "scale", Vector2(1.05, 1.05), 0.1)
			tw.tween_property(card, "rotation", offset.x * 0.08, 0.1)
	)

	card.mouse_exited.connect(func():
		var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
		tw.tween_property(card, "scale", Vector2.ONE, current_duration)
		tw.tween_property(card, "rotation", 0.0, current_duration)
	)

	root.add_child(card)
	return root

# 3. Control Center Slider
func _build_control_slider_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 12)

	var slider_bg = Panel.new()
	slider_bg.custom_minimum_size = Vector2(60, 180)
	var bg_style = StyleBoxFlat.new()
	bg_style.bg_color = Color(0.1, 0.1, 0.12)
	bg_style.corner_radius_top_left = 30
	bg_style.corner_radius_top_right = 30
	bg_style.corner_radius_bottom_left = 30
	bg_style.corner_radius_bottom_right = 30
	slider_bg.add_theme_stylebox_override("panel", bg_style)

	var fill_panel = Panel.new()
	fill_panel.anchor_top = 0.4
	fill_panel.anchor_right = 1.0
	fill_panel.anchor_bottom = 1.0
	var fill_style = StyleBoxFlat.new()
	fill_style.bg_color = Color.WHITE
	fill_style.corner_radius_top_left = 15
	fill_style.corner_radius_top_right = 15
	fill_style.corner_radius_bottom_left = 30
	fill_style.corner_radius_bottom_right = 30
	fill_panel.add_theme_stylebox_override("panel", fill_style)
	slider_bg.add_child(fill_panel)

	var val_label = Label.new()
	val_label.text = "60% 亮度"
	val_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	val_label.add_theme_font_size_override("font_size", 11)

	slider_bg.gui_input.connect(func(event: InputEvent):
		if event is InputEventMouseButton and event.pressed:
			var ratio = 1.0 - (event.position.y / slider_bg.size.y)
			ratio = clamp(ratio, 0.0, 1.0)
			
			var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
			tw.tween_property(fill_panel, "anchor_top", 1.0 - ratio, current_duration)
			val_label.text = str(round(ratio * 100)) + "% 亮度"
	)

	vbox.add_child(slider_bg)
	vbox.add_child(val_label)
	root.add_child(vbox)
	return root

# 4. Context Menu Blur
func _build_context_menu_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var card = PanelContainer.new()
	card.custom_minimum_size = Vector2(220, 120)
	card.pivot_offset = Vector2(110, 60)
	var style = StyleBoxFlat.new()
	style.bg_color = Color(0.15, 0.15, 0.2)
	style.corner_radius_top_left = 16
	style.corner_radius_top_right = 16
	style.corner_radius_bottom_left = 16
	style.corner_radius_bottom_right = 16
	card.add_theme_stylebox_override("panel", style)

	var lbl = Label.new()
	lbl.text = "點擊彈出 3D Haptic 選單"
	lbl.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	lbl.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	card.add_child(lbl)

	card.gui_input.connect(func(event: InputEvent):
		if event is InputEventMouseButton and event.pressed:
			var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
			tw.tween_property(card, "scale", Vector2(1.1, 1.1), current_duration * 0.5)
			tw.chain().tween_property(card, "scale", Vector2.ONE, current_duration)
			_show_toast("已觸發 Context Menu 高斯模糊彈窗")
	)

	root.add_child(card)
	return root

# 5. Siri Glow Wave
func _build_siri_glow_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var btn = Button.new()
	btn.text = "🎙️ 點擊喚醒 Siri 流體光束"
	btn.custom_minimum_size = Vector2(220, 50)
	btn.pressed.connect(func():
		var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
		tw.tween_property(btn, "scale", Vector2(1.15, 1.15), 0.2)
		tw.chain().tween_property(btn, "scale", Vector2.ONE, current_duration)
		_show_toast("Siri 流體波紋與炫光啟動中...")
	)

	root.add_child(btn)
	return root

# 6. Action Button HUD
func _build_action_hud_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 20)

	var hud = PanelContainer.new()
	hud.custom_minimum_size = Vector2(180, 36)
	hud.pivot_offset = Vector2(90, 18)
	hud.modulate.a = 0.5
	var hud_lbl = Label.new()
	hud_lbl.text = "🔔 靜音模式：開啟"
	hud_lbl.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	hud_lbl.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	hud.add_child(hud_lbl)

	var act_btn = Button.new()
	act_btn.text = "按住 Action Button"
	act_btn.button_down.connect(func():
		var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
		tw.tween_property(hud, "scale", Vector2(1.1, 1.1), current_duration)
		tw.tween_property(hud, "modulate:a", 1.0, current_duration)
	)
	act_btn.button_up.connect(func():
		var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
		tw.tween_property(hud, "scale", Vector2.ONE, current_duration)
		tw.tween_property(hud, "modulate:a", 0.5, current_duration)
	)

	vbox.add_child(hud)
	vbox.add_child(act_btn)
	root.add_child(vbox)
	return root

# 7. Jiggle Mode
func _build_jiggle_mode_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 16)

	var grid = HBoxContainer.new()
	grid.add_theme_constant_override("separation", 12)

	for i in range(3):
		var icon = Panel.new()
		icon.custom_minimum_size = Vector2(50, 50)
		icon.pivot_offset = Vector2(25, 25)
		var style = StyleBoxFlat.new()
		style.bg_color = Color(0.2 + i * 0.2, 0.5, 0.8)
		style.corner_radius_top_left = 12
		style.corner_radius_top_right = 12
		style.corner_radius_bottom_left = 12
		style.corner_radius_bottom_right = 12
		icon.add_theme_stylebox_override("panel", style)
		grid.add_child(icon)
		jiggle_items.append(icon)

	var toggle_btn = Button.new()
	toggle_btn.text = "切換 Jiggle 抖動 Mode"
	toggle_btn.pressed.connect(func():
		is_jiggling = !is_jiggling
		if not is_jiggling:
			for item in jiggle_items:
				item.rotation = 0
	)

	vbox.add_child(grid)
	vbox.add_child(toggle_btn)
	root.add_child(vbox)
	return root

# 8. Typography Morph
func _build_typography_morph_demo() -> Control:
	var root = CenterContainer.new()
	root.anchor_right = 1.0
	root.anchor_bottom = 1.0
	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 16)

	var num_label = Label.new()
	num_label.text = "042"
	num_label.add_theme_font_size_override("font_size", 36)
	num_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	num_label.pivot_offset = Vector2(30, 20)

	var btn_hbox = HBoxContainer.new()
	var dec = Button.new()
	dec.text = " - "
	var inc = Button.new()
	inc.text = " + "

	var counter = 42
	inc.pressed.connect(func():
		counter += 1
		num_label.text = str(counter).pad_zeros(3)
		var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
		tw.tween_property(num_label, "scale", Vector2(1.3, 1.3), 0.1)
		tw.chain().tween_property(num_label, "scale", Vector2.ONE, current_duration)
	)

	dec.pressed.connect(func():
		counter = max(0, counter - 1)
		num_label.text = str(counter).pad_zeros(3)
		var tw = create_tween().set_trans(Tween.TRANS_SPRING).set_ease(Tween.EASE_OUT)
		tw.tween_property(num_label, "scale", Vector2(0.8, 0.8), 0.1)
		tw.chain().tween_property(num_label, "scale", Vector2.ONE, current_duration)
	)

	btn_hbox.add_child(dec)
	btn_hbox.add_child(inc)

	vbox.add_child(num_label)
	vbox.add_child(btn_hbox)
	root.add_child(vbox)
	return root

# ==============================================================================
# 物理參數與控制面板邏輯
# ==============================================================================
func _on_duration_changed(val: float) -> void:
	current_duration = val
	duration_val_label.text = str(val) + "s"
	_update_code_snippet()

func _on_damping_changed(val: float) -> void:
	current_damping = val
	damping_val_label.text = str(val)
	_update_code_snippet()

func _on_blur_changed(val: float) -> void:
	current_blur = val
	blur_val_label.text = str(val) + "px"
	_update_code_snippet()

func _on_preset_selected(index: int) -> void:
	match index:
		0: # Standard
			duration_slider.value = 0.45
			damping_slider.value = 0.82
		1: # Bouncy
			duration_slider.value = 0.60
			damping_slider.value = 0.45
		2: # Gentle
			duration_slider.value = 0.75
			damping_slider.value = 0.95
		3: # Snappy
			duration_slider.value = 0.25
			damping_slider.value = 0.70

func _update_code_snippet() -> void:
	var code = "# Godot 4 GDScript Apple Motion Spring Tween\n"
	code += "var tween = create_tween()\n"
	code += "tween.set_trans(Tween.TRANS_SPRING)\n"
	code += "tween.set_ease(Tween.EASE_OUT)\n"
	code += 'tween.tween_property(node, "scale", target_scale, ' + str(current_duration) + ")\n"
	code += "# Damping Ratio: " + str(current_damping) + "\n"
	code += "# Blur Intensity: " + str(current_blur) + "px"
	code_text_edit.text = code

func _filter_category(cat: String) -> void:
	active_category = cat
	_render_sidebar()

func _on_reset_params_pressed() -> void:
	preset_option_button.select(0)
	_on_preset_selected(0)
	_show_toast("物理參數已重置為系統預設值")

func _on_copy_code_pressed() -> void:
	DisplayServer.clipboard_set(code_text_edit.text)
	_show_toast("GDScript 彈簧代碼已複製到剪貼簿！")

func _show_toast(msg: String) -> void:
	toast_label.text = msg
	toast_panel.visible = true
	toast_panel.position = Vector2(
		get_viewport_rect().size.x - toast_panel.size.x - 20,
		get_viewport_rect().size.y - 60
	)
	toast_timer.start(2.5)
