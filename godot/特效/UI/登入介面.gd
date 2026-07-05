# ==============================================================================
#             CHROND FLUX - 登入介面 UI (Godot 4.x 版本)
# ==============================================================================
# 此腳本動態建立所有 UI 節點、樣式、漸層及粒子效果，
# 完美還原影片中帶有霓虹紅粉色發光（Neon Glow）的科幻時間旅行風格登入介面。
# ==============================================================================

extends Control

# 定義霓虹主題色彩
const COLOR_BG_DARK = Color("0d060a")       # 極暗底色
const COLOR_NEON_PINK = Color("ff2a6d")     # 霓虹粉紅主色
const COLOR_NEON_RED = Color("9a0f2b")      # 暗霓虹紅（邊框/漸層）
const COLOR_CARD_BG = Color("150b11cc")     # 卡片半透明背景 (約 80% 晶瑩透明)
const COLOR_TEXT_MUTED = Color("a58290")    # 輔助灰色文字

# UI 節點引用
var card_panel: PanelContainer
var time_id_input: LineEdit
var flux_key_input: LineEdit
var jump_button: Button

func _ready() -> void:
	# 1. 設置主視窗與背景
	anchor_right = 1.0
	anchor_bottom = 1.0
	_setup_background()

	# 2. 建立漂浮粒子效果 (仿影片背景微弱星塵)
	_setup_background_particles()

	# 3. 建立登入卡片主容器
	_setup_login_card()
	
	# 4. 視窗大小自適應連接
	get_tree().root.size_changed.connect(_on_window_resized)
	_on_window_resized()

# --- 背景建立 ---
func _setup_background() -> void:
	# 建立漸層背景
	var bg_rect = TextureRect.new()
	bg_rect.name = "Background"
	bg_rect.anchor_right = 1.0
	bg_rect.anchor_bottom = 1.0
	add_child(bg_rect)
	
	# 動態產生一個放射狀/線性漸層紋理
	var gradient = Gradient.new()
	gradient.add_point(0.0, COLOR_BG_DARK)
	gradient.add_point(0.7, Color("14050d"))
	gradient.add_point(1.0, COLOR_NEON_RED * 0.15) # 邊角有微弱紅光
	
	var grad_texture = GradientTexture2D.new()
	grad_texture.gradient = gradient
	grad_texture.fill = GradientTexture2D.FILL_RADIAL
	grad_texture.fill_from = Vector2(0.5, 0.5)
	grad_texture.fill_to = Vector2(1.0, 1.0)
	grad_texture.width = 512
	grad_texture.height = 512
	
	bg_rect.texture = grad_texture
	bg_rect.stretch_mode = TextureRect.STRETCH_SCALE

# --- 背景粒子效果 ---
func _setup_background_particles() -> void:
	var particles = GPUParticles2D.new()
	particles.name = "GlowParticles"
	particles.position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2)
	add_child(particles)
	
	# 建立粒子材質
	var particle_material = ParticleProcessMaterial.new()
	particle_material.emission_shape = ParticleProcessMaterial.EMISSION_SHAPE_BOX
	particle_material.emission_box_extents = Vector3(800, 600, 1)
	particle_material.gravity = Vector3(0, -5, 0) # 緩慢上升
	particle_material.direction = Vector3(0, -1, 0)
	particle_material.spread = 15.0
	particle_material.initial_velocity_min = 2.0
	particle_material.initial_velocity_max = 10.0
	
	# 粒子縮放與淡入淡出
	particle_material.scale_min = 1.0
	particle_material.scale_max = 3.0
	
	# 粒子顏色漸層
	var color_gradient = Gradient.new()
	color_gradient.add_point(0.0, Color(COLOR_NEON_PINK.r, COLOR_NEON_PINK.g, COLOR_NEON_PINK.b, 0.0))
	color_gradient.add_point(0.5, Color(COLOR_NEON_PINK.r, COLOR_NEON_PINK.g, COLOR_NEON_PINK.b, 0.25))
	color_gradient.add_point(1.0, Color(COLOR_NEON_RED.r, COLOR_NEON_RED.g, COLOR_NEON_RED.b, 0.0))
	
	var color_ramp = GradientTexture1D.new()
	color_ramp.gradient = color_gradient
	particle_material.color_ramp = color_ramp
	
	particles.process_material = particle_material
	particles.amount = 40
	particles.lifetime = 8.0
	particles.preprocess = 5.0
	
	# 建立簡單的 2x2 白點紋理給粒子使用
	var img = Image.create(2, 2, false, Image.FORMAT_RGBA8)
	img.fill(Color.WHITE)
	particles.texture = ImageTexture.create_from_image(img)

# --- 登入卡片主 UI 建立 ---
func _setup_login_card() -> void:
	# 1. 建立置中的卡片容器
	card_panel = PanelContainer.new()
	card_panel.name = "LoginCard"
	add_child(card_panel)
	
	# 2. 設置卡片樣式：深色半透明底色 + 霓虹粉發光邊框
	var card_style = StyleBoxFlat.new()
	card_style.bg_color = COLOR_CARD_BG
	card_style.corner_radius_top_left = 24
	card_style.corner_radius_top_right = 24
	card_style.corner_radius_bottom_left = 24
	card_style.corner_radius_bottom_right = 24
	
	# 影片中的發光邊框線
	card_style.border_width_left = 2
	card_style.border_width_top = 2
	card_style.border_width_right = 2
	card_style.border_width_bottom = 2
	card_style.border_color = COLOR_NEON_PINK
	
	# 發光陰影效果 (Shadow Glow)
	card_style.shadow_color = Color(COLOR_NEON_PINK.r, COLOR_NEON_PINK.g, COLOR_NEON_PINK.b, 0.4)
	card_style.shadow_size = 25
	card_style.shadow_offset = Vector2(0, 0)
	
	card_panel.add_theme_stylebox_override("panel", card_style)
	
	# 3. 卡片內部佈局 (垂直佈局)
	var margin_container = MarginContainer.new()
	margin_container.add_theme_constant_override("margin_top", 45)
	margin_container.add_theme_constant_override("margin_bottom", 45)
	margin_container.add_theme_constant_override("margin_left", 40)
	margin_container.add_theme_constant_override("margin_right", 40)
	card_panel.add_child(margin_container)
	
	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 24)
	margin_container.add_child(vbox)
	
	# --- 標題: CHROND FLUX ---
	var title_vbox = VBoxContainer.new()
	title_vbox.add_theme_constant_override("separation", 2)
	
	var title_1 = Label.new()
	title_1.text = "CHROND"
	title_1.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title_1.add_theme_font_size_override("font_size", 28)
	title_1.add_theme_color_override("font_color", Color.WHITE)
	# 加上微弱的發光陰影
	title_1.add_theme_constant_override("shadow_offset_x", 1)
	title_1.add_theme_constant_override("shadow_offset_y", 1)
	title_1.add_theme_color_override("font_shadow_color", COLOR_NEON_PINK * 0.5)
	
	var title_2 = Label.new()
	title_2.text = "FLUX"
	title_2.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title_2.add_theme_font_size_override("font_size", 28)
	title_2.add_theme_color_override("font_color", Color.WHITE)
	title_2.add_theme_constant_override("shadow_offset_x", 1)
	title_2.add_theme_constant_override("shadow_offset_y", 1)
	title_2.add_theme_color_override("font_shadow_color", COLOR_NEON_PINK * 0.5)
	
	title_vbox.add_child(title_1)
	title_vbox.add_child(title_2)
	vbox.add_child(title_vbox)
	
	# 增加一些間距
	var spacer = Control.new()
	spacer.custom_minimum_size = Vector2(0, 10)
	vbox.add_child(spacer)
	
	# --- 輸入框 1: Time ID ---
	var id_vbox = VBoxContainer.new()
	id_vbox.add_theme_constant_override("separation", 6)
	
	var id_label = Label.new()
	id_label.text = "time id"
	id_label.add_theme_color_override("font_color", COLOR_TEXT_MUTED)
	id_label.add_theme_font_size_override("font_size", 14)
	id_vbox.add_child(id_label)
	
	time_id_input = LineEdit.new()
	time_id_input.custom_minimum_size = Vector2(250, 40)
	_style_input_field(time_id_input)
	id_vbox.add_child(time_id_input)
	
	vbox.add_child(id_vbox)
	
	# --- 輸入框 2: Flux Key ---
	var key_vbox = VBoxContainer.new()
	key_vbox.add_theme_constant_override("separation", 6)
	
	var key_label = Label.new()
	key_label.text = "flux key"
	key_label.add_theme_color_override("font_color", COLOR_TEXT_MUTED)
	key_label.add_theme_font_size_override("font_size", 14)
	key_vbox.add_child(key_label)
	
	flux_key_input = LineEdit.new()
	flux_key_input.custom_minimum_size = Vector2(250, 40)
	flux_key_input.secret = true # 隱藏輸入密碼
	_style_input_field(flux_key_input)
	key_vbox.add_child(flux_key_input)
	
	vbox.add_child(key_vbox)
	
	# 增加一些間距
	var spacer2 = Control.new()
	spacer2.custom_minimum_size = Vector2(0, 15)
	vbox.add_child(spacer2)
	
	# --- 登入按鈕: Jump Time ---
	jump_button = Button.new()
	jump_button.name = "JumpButton"
	jump_button.text = "Jump Time"
	jump_button.custom_minimum_size = Vector2(250, 48)
	_style_jump_button(jump_button)
	vbox.add_child(jump_button)
	
	# 按鈕訊號連接
	jump_button.pressed.connect(_on_jump_button_pressed)
	jump_button.mouse_entered.connect(_on_jump_button_hover.bind(true))
	jump_button.mouse_exited.connect(_on_jump_button_hover.bind(false))
	
	# --- 底端輔助連結: New Traveler? Forget Timeline ---
	var links_hbox = HBoxContainer.new()
	links_hbox.alignment = BoxContainer.ALIGNMENT_CENTER
	links_hbox.add_theme_constant_override("separation", 10)
	
	var register_btn = Button.new()
	register_btn.text = "New Traveler?"
	_style_link_button(register_btn)
	
	var separator = Label.new()
	separator.text = "|"
	separator.add_theme_color_override("font_color", COLOR_TEXT_MUTED * 0.5)
	separator.add_theme_font_size_override("font_size", 12)
	
	var forget_btn = Button.new()
	forget_btn.text = "Forget Timeline"
	_style_link_button(forget_btn)
	
	links_hbox.add_child(register_btn)
	links_hbox.add_child(separator)
	links_hbox.add_child(forget_btn)
	vbox.add_child(links_hbox)

# --- 輸入框樣式設定 ---
func _style_input_field(line_edit: LineEdit) -> void:
	# 取消焦點框與背景
	var normal_style = StyleBoxFlat.new()
	normal_style.bg_color = Color(0, 0, 0, 0.4) # 半透明黑
	normal_style.corner_radius_top_left = 6
	normal_style.corner_radius_top_right = 6
	normal_style.corner_radius_bottom_left = 6
	normal_style.corner_radius_bottom_right = 6
	normal_style.border_width_left = 1
	normal_style.border_width_top = 1
	normal_style.border_width_right = 1
	normal_style.border_width_bottom = 1
	normal_style.border_color = COLOR_NEON_RED * 0.7 # 暗紅色邊框
	
	var focus_style = normal_style.duplicate()
	focus_style.border_color = COLOR_NEON_PINK # 聚焦時亮粉色
	focus_style.shadow_color = Color(COLOR_NEON_PINK.r, COLOR_NEON_PINK.g, COLOR_NEON_PINK.b, 0.2)
	focus_style.shadow_size = 4
	
	line_edit.add_theme_stylebox_override("normal", normal_style)
	line_edit.add_theme_stylebox_override("focus", focus_style)
	line_edit.add_theme_color_override("font_color", Color.WHITE)
	line_edit.add_theme_color_override("caret_color", COLOR_NEON_PINK)
	line_edit.add_theme_constant_override("minimum_character_width", 1)

# --- 登入按鈕樣式與動畫設定 ---
func _style_jump_button(btn: Button) -> void:
	# 建立按鈕一般狀態樣式 (圓角漸層紅/粉色)
	var normal_style = StyleBoxFlat.new()
	normal_style.bg_color = COLOR_NEON_PINK
	# 使用漸層混合
	normal_style.corner_radius_top_left = 12
	normal_style.corner_radius_top_right = 12
	normal_style.corner_radius_bottom_left = 12
	normal_style.corner_radius_bottom_right = 12
	
	# 發光陰影
	normal_style.shadow_color = Color(COLOR_NEON_PINK.r, COLOR_NEON_PINK.g, COLOR_NEON_PINK.b, 0.5)
	normal_style.shadow_size = 12
	
	var hover_style = normal_style.duplicate()
	hover_style.bg_color = COLOR_NEON_PINK.lightened(0.15)
	hover_style.shadow_size = 18 # 懸停時發光更亮
	
	var pressed_style = normal_style.duplicate()
	pressed_style.bg_color = COLOR_NEON_PINK.darkened(0.2)
	pressed_style.shadow_size = 6
	
	btn.add_theme_stylebox_override("normal", normal_style)
	btn.add_theme_stylebox_override("hover", hover_style)
	btn.add_theme_stylebox_override("pressed", pressed_style)
	btn.add_theme_stylebox_override("focus", StyleBoxEmpty.new()) # 移除焦點框
	
	btn.add_theme_color_override("font_color", Color.WHITE)
	btn.add_theme_color_override("font_hover_color", Color.WHITE)
	btn.add_theme_color_override("font_pressed_color", Color("ffe0eb"))
	btn.add_theme_font_size_override("font_size", 16)
	
	# 設定錨點旋轉中心，用於懸停縮放動畫
	btn.pivot_offset = btn.custom_minimum_size / 2

# --- 連結按鈕樣式設定 ---
func _style_link_button(btn: Button) -> void:
	btn.flat = true
	btn.add_theme_color_override("font_color", COLOR_TEXT_MUTED)
	btn.add_theme_color_override("font_hover_color", COLOR_NEON_PINK)
	btn.add_theme_color_override("font_pressed_color", COLOR_NEON_RED)
	btn.add_theme_font_size_override("font_size", 12)
	btn.add_theme_stylebox_override("normal", StyleBoxEmpty.new())
	btn.add_theme_stylebox_override("hover", StyleBoxEmpty.new())
	btn.add_theme_stylebox_override("pressed", StyleBoxEmpty.new())
	btn.add_theme_stylebox_override("focus", StyleBoxEmpty.new())
	btn.mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND

# --- 視窗縮放動態調整置中 ---
func _on_window_resized() -> void:
	if card_panel:
		var window_size = get_viewport_rect().size
		card_panel.size = Vector2(330, 480) # 寬度與高度比例
		card_panel.position = (window_size - card_panel.size) / 2
		
		var particles = get_node_or_null("GlowParticles")
		if particles:
			particles.position = window_size / 2

# --- 動態互動動畫效果 ---
func _on_jump_button_hover(is_hover: bool) -> void:
	var tween = create_tween().set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK)
	if is_hover:
		# 微妙地放大按鈕
		tween.tween_property(jump_button, "scale", Vector2(1.04, 1.04), 0.15)
	else:
		# 恢復原狀
		tween.tween_property(jump_button, "scale", Vector2(1.0, 1.0), 0.15)

func _on_jump_button_pressed() -> void:
	# 按下按鈕時的特效 (如螢幕震動或卡片微顫，模擬 time jump 啟動)
	var tween = create_tween().set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_ELASTIC)
	var original_pos = card_panel.position
	
	# 小幅度震動效果
	tween.tween_property(card_panel, "position", original_pos + Vector2(randf_range(-6, 6), randf_range(-3, 3)), 0.05)
	tween.tween_property(card_panel, "position", original_pos + Vector2(randf_range(-6, 6), randf_range(-3, 3)), 0.05)
	tween.tween_property(card_panel, "position", original_pos, 0.1)
	
	# 印出輸入的值（用於邏輯測試）
	print("Time Jump Triggered!")
	print("Time ID: ", time_id_input.text)
	print("Flux Key: ", flux_key_input.text)
