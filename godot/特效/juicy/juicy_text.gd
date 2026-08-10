extends Control
#1,4,5,8,9,10,11,12,13,15
## Godot 4 Juicy Text Effects Showcase
## 掛載此腳本至空白場景的 Control 節點，按下 F6 執行即可。

var cards_container: GridContainer
var combo_count: int = 12
var is_wobbling: bool = false
var wobble_time: float = 0.0

# 儲存各卡片 Preview 內主要 Label/Control 的引用，避免字串路徑搜尋失敗
var preview_nodes: Dictionary = {}

func _ready() -> void:
	anchor_right = 1.0
	anchor_bottom = 1.0

	# 深色背景
	var bg = ColorRect.new()
	bg.color = Color("#0d0f17")
	bg.set_anchors_and_offsets_preset(PRESET_FULL_RECT)
	add_child(bg)

	# 主滾動容器
	var scroll = ScrollContainer.new()
	scroll.set_anchors_and_offsets_preset(PRESET_FULL_RECT)
	scroll.add_theme_constant_override("margin_left", 20)
	scroll.add_theme_constant_override("margin_top", 20)
	scroll.add_theme_constant_override("margin_right", 20)
	scroll.add_theme_constant_override("margin_bottom", 20)
	add_child(scroll)

	var main_vbox = VBoxContainer.new()
	main_vbox.size_flags_horizontal = SIZE_EXPAND_FILL
	main_vbox.add_theme_constant_override("separation", 20)
	scroll.add_child(main_vbox)

	# 標題 Header
	var title = Label.new()
	title.text = "GODOT 4 - 15 JUICY TEXT EFFECTS SHOWCASE"
	title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title.add_theme_font_size_override("font_size", 28)
	title.add_theme_color_override("font_color", Color("#f59e0b"))
	main_vbox.add_child(title)

	# 全局控制列
	var bar = HBoxContainer.new()
	bar.alignment = BoxContainer.ALIGNMENT_CENTER
	bar.add_theme_constant_override("separation", 15)
	main_vbox.add_child(bar)

	var trigger_all_btn = Button.new()
	trigger_all_btn.text = "▶ 觸發全部特效 (Trigger All)"
	trigger_all_btn.custom_minimum_size = Vector2(220, 40)
	trigger_all_btn.pressed.connect(_on_trigger_all_pressed)
	bar.add_child(trigger_all_btn)

	# 15 個卡片網格容器
	cards_container = GridContainer.new()
	cards_container.columns = 3
	cards_container.size_flags_horizontal = SIZE_EXPAND_FILL
	cards_container.add_theme_constant_override("h_separation", 16)
	cards_container.add_theme_constant_override("v_separation", 16)
	main_vbox.add_child(cards_container)

	_build_all_cards()

func _process(delta: float) -> void:
	if is_wobbling and preview_nodes.has("Card14_Label"):
		wobble_time += delta
		var slime_label = preview_nodes["Card14_Label"] as Label
		if is_instance_valid(slime_label):
			_update_pivot(slime_label)
			var scale_x = 1.0 + sin(wobble_time * 18.0) * 0.3 * exp(-wobble_time * 3.0)
			var scale_y = 1.0 - sin(wobble_time * 18.0) * 0.3 * exp(-wobble_time * 3.0)
			slime_label.scale = Vector2(scale_x, scale_y)
			
			if wobble_time > 1.5:
				is_wobbling = false
				slime_label.scale = Vector2.ONE

# 自動校正 Pivot Offset 至中心點
func _update_pivot(control: Control) -> void:
	control.pivot_offset = control.size / 2.0

# 卡片生成輔助函式
func _create_card_base(card_id: String, title_text: String, tag_text: String, desc_text: String) -> Dictionary:
	var card = PanelContainer.new()
	card.name = card_id
	card.custom_minimum_size = Vector2(320, 240)
	card.size_flags_horizontal = SIZE_EXPAND_FILL

	var style = StyleBoxFlat.new()
	style.bg_color = Color("#161b26")
	style.border_color = Color("#2d3748")
	style.set_border_width_all(2)
	style.set_corner_radius_all(12)
	style.content_margin_left = 12
	style.content_margin_top = 12
	style.content_margin_right = 12
	style.content_margin_bottom = 12
	card.add_theme_stylebox_override("panel", style)
	cards_container.add_child(card)

	var vbox = VBoxContainer.new()
	vbox.add_theme_constant_override("separation", 8)
	card.add_child(vbox)

	# Header
	var hbox = HBoxContainer.new()
	vbox.add_child(hbox)

	var lbl_title = Label.new()
	lbl_title.text = title_text
	lbl_title.size_flags_horizontal = SIZE_EXPAND_FILL
	lbl_title.add_theme_font_size_override("font_size", 14)
	lbl_title.add_theme_color_override("font_color", Color("#fbbf24"))
	hbox.add_child(lbl_title)

	var lbl_tag = Label.new()
	lbl_tag.text = "[" + tag_text + "]"
	lbl_tag.add_theme_font_size_override("font_size", 11)
	lbl_tag.add_theme_color_override("font_color", Color("#9ca3af"))
	hbox.add_child(lbl_tag)

	var lbl_desc = Label.new()
	lbl_desc.text = desc_text
	lbl_desc.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	lbl_desc.add_theme_font_size_override("font_size", 11)
	lbl_desc.add_theme_color_override("font_color", Color("#6b7280"))
	vbox.add_child(lbl_desc)

	# Preview Box
	var preview = Panel.new()
	preview.name = "Preview"
	preview.custom_minimum_size = Vector2(0, 100)
	preview.size_flags_vertical = SIZE_EXPAND_FILL
	var p_style = StyleBoxFlat.new()
	p_style.bg_color = Color("#020617")
	p_style.set_corner_radius_all(8)
	preview.add_theme_stylebox_override("panel", p_style)
	vbox.add_child(preview)

	return {"vbox": vbox, "preview": preview}

func _build_all_cards() -> void:
	# Card 1: Squash & Stretch
	var c1 = _create_card_base("Card1", "01. 彈性形變", "Pop", "文字生成時快速拉高、壓扁並回彈定格。")
	var l1 = Label.new()
	l1.text = "+999 CRIT"
	l1.add_theme_font_size_override("font_size", 22)
	l1.add_theme_color_override("font_color", Color("#f59e0b"))
	l1.set_anchors_and_offsets_preset(PRESET_CENTER)
	c1.preview.add_child(l1)
	preview_nodes["Card1_Label"] = l1
	var btn1 = Button.new()
	btn1.text = "觸發 Squash & Stretch"
	btn1.pressed.connect(play_effect_1)
	c1.vbox.add_child(btn1)

	# Card 2: Exponential Growth
	var c2 = _create_card_base("Card2", "02. 指數級巨化", "Charge", "字體大小按指數曲線急速膨脹。")
	var l2 = Label.new()
	l2.text = "ULTIMATE"
	l2.add_theme_font_size_override("font_size", 20)
	l2.add_theme_color_override("font_color", Color("#ef4444"))
	l2.set_anchors_and_offsets_preset(PRESET_CENTER)
	c2.preview.add_child(l2)
	preview_nodes["Card2_Label"] = l2
	var btn2 = Button.new()
	btn2.text = "觸發蓄力巨化"
	btn2.pressed.connect(play_effect_2)
	c2.vbox.add_child(btn2)

	# Card 3: Crit Shake & Flash
	var c3 = _create_card_base("Card3", "03. 暴擊震屏閃光", "Crit", "對比度高光閃爍 + 高頻 X/Y 震動。")
	var l3 = Label.new()
	l3.text = "9,999!!"
	l3.add_theme_font_size_override("font_size", 24)
	l3.add_theme_color_override("font_color", Color("#facc15"))
	l3.set_anchors_and_offsets_preset(PRESET_CENTER)
	c3.preview.add_child(l3)
	preview_nodes["Card3_Label"] = l3
	preview_nodes["Card3_Preview"] = c3.preview
	var btn3 = Button.new()
	btn3.text = "觸發暴擊"
	btn3.pressed.connect(play_effect_3)
	c3.vbox.add_child(btn3)

	# Card 4: Floating XP Drift
	var c4 = _create_card_base("Card4", "04. 拋物線飄浮", "XP", "數字向上拋出受重力影響放緩升速並漸隱。")
	preview_nodes["Card4_Preview"] = c4.preview
	var btn4 = Button.new()
	btn4.text = "獲得經驗值"
	btn4.pressed.connect(play_effect_4)
	c4.vbox.add_child(btn4)

	# Card 5: Recoil Typewriter
	var c5 = _create_card_base("Card5", "05. 後座力打字機", "Dialogue", "印出字元時整個框產生抖動反衝。")
	var l5 = Label.new()
	l5.text = "System Ready..."
	l5.add_theme_font_size_override("font_size", 14)
	l5.add_theme_color_override("font_color", Color("#06b6d4"))
	l5.set_anchors_and_offsets_preset(PRESET_CENTER)
	c5.preview.add_child(l5)
	preview_nodes["Card5_Label"] = l5
	preview_nodes["Card5_Preview"] = c5.preview
	var btn5 = Button.new()
	btn5.text = "打字測試"
	btn5.pressed.connect(play_effect_5)
	c5.vbox.add_child(btn5)

	# Card 6: Sinusoidal Wave Bounce
	var c6 = _create_card_base("Card6", "06. 正弦逐字波浪", "BBCode", "使用 Godot RichTextLabel [wave] 標籤。")
	var r6 = RichTextLabel.new()
	r6.bbcode_enabled = true
	r6.text = "[center][wave amp=40.0 freq=5.0][font_size=24][color=#ec4899]VICTORY![/color][/font_size][/wave][/center]"
	r6.custom_minimum_size = Vector2(200, 40)
	r6.set_anchors_and_offsets_preset(PRESET_CENTER)
	c6.preview.add_child(r6)
	preview_nodes["Card6_RichLabel"] = r6
	var btn6 = Button.new()
	btn6.text = "脈衝正弦波"
	btn6.pressed.connect(play_effect_6)
	c6.vbox.add_child(btn6)

	# Card 7: Rainbow Stream
	var c7 = _create_card_base("Card7", "07. 霓虹彩虹流光", "BBCode", "使用 Godot RichTextLabel [rainbow] 標籤。")
	var r7 = RichTextLabel.new()
	r7.bbcode_enabled = true
	r7.text = "[center][rainbow freq=1.0 sat=0.8 val=1.0][font_size=20]★ LEGENDARY ★[/font_size][/rainbow][/center]"
	r7.custom_minimum_size = Vector2(200, 40)
	r7.set_anchors_and_offsets_preset(PRESET_CENTER)
	c7.preview.add_child(r7)
	preview_nodes["Card7_RichLabel"] = r7
	var btn7 = Button.new()
	btn7.text = "閃耀高亮"
	btn7.pressed.connect(play_effect_7)
	c7.vbox.add_child(btn7)

	# Card 8: Cyberpunk Glitch
	var c8 = _create_card_base("Card8", "08. 賽博朋克故障", "Glitch", "亂碼替換 + 水平跳動 + 色偏閃爍。")
	var l8 = Label.new()
	l8.text = "SYSTEM OVERRIDE"
	l8.add_theme_font_size_override("font_size", 16)
	l8.add_theme_color_override("font_color", Color("#ef4444"))
	l8.set_anchors_and_offsets_preset(PRESET_CENTER)
	c8.preview.add_child(l8)
	preview_nodes["Card8_Label"] = l8
	var btn8 = Button.new()
	btn8.text = "觸發 Glitch"
	btn8.pressed.connect(play_effect_8)
	c8.vbox.add_child(btn8)

	# Card 9: Combo Slam
	var c9 = _create_card_base("Card9", "09. 連擊數砸屏升溫", "Combo", "砸屏縮放 + 色彩由黃升溫至火紅。")
	var l9 = Label.new()
	l9.text = "12 HITS!"
	l9.add_theme_font_size_override("font_size", 26)
	l9.add_theme_color_override("font_color", Color("#f59e0b"))
	l9.set_anchors_and_offsets_preset(PRESET_CENTER)
	c9.preview.add_child(l9)
	preview_nodes["Card9_Label"] = l9
	var btn9 = Button.new()
	btn9.text = "增加 Combo"
	btn9.pressed.connect(play_effect_9)
	c9.vbox.add_child(btn9)

	# Card 10: Gravity Drop Coins
	var c10 = _create_card_base("Card10", "10. 物理掉落彈跳", "Physics", "字符受重力落至地面並微幅彈跳。")
	preview_nodes["Card10_Preview"] = c10.preview
	var btn10 = Button.new()
	btn10.text = "掉落分數"
	btn10.pressed.connect(play_effect_10)
	c10.vbox.add_child(btn10)

	# Card 11: Particle Shatter
	var c11 = _create_card_base("Card11", "11. 文字粉碎炸裂", "Particles", "文字分解為碎片粒子向外散射。")
	var l11 = Label.new()
	l11.text = "DESTROYED"
	l11.add_theme_font_size_override("font_size", 20)
	l11.add_theme_color_override("font_color", Color("#e5e7eb"))
	l11.set_anchors_and_offsets_preset(PRESET_CENTER)
	c11.preview.add_child(l11)
	preview_nodes["Card11_Label"] = l11
	preview_nodes["Card11_Preview"] = c11.preview
	var btn11 = Button.new()
	btn11.text = "粉碎文字"
	btn11.pressed.connect(play_effect_11)
	c11.vbox.add_child(btn11)

	# Card 12: Energy Implosion
	var c12 = _create_card_base("Card12", "12. 能量凝聚爆發", "Spell", "光斑向內坍縮，隨後瞬間白閃定格。")
	var l12 = Label.new()
	l12.text = "MAGIC SPELL"
	l12.add_theme_font_size_override("font_size", 20)
	l12.add_theme_color_override("font_color", Color("#60a5fa"))
	l12.set_anchors_and_offsets_preset(PRESET_CENTER)
	c12.preview.add_child(l12)
	preview_nodes["Card12_Label"] = l12
	preview_nodes["Card12_Preview"] = c12.preview
	var btn12 = Button.new()
	btn12.text = "凝聚施法"
	btn12.pressed.connect(play_effect_12)
	c12.vbox.add_child(btn12)

	# Card 13: Hit-Stop Flash Frame
	var c13 = _create_card_base("Card13", "13. 停格頓幀白閃", "HitStop", "畫面凍結 0.08 秒全白，再展現文字。")
	var l13 = Label.new()
	l13.text = "K.O."
	l13.add_theme_font_size_override("font_size", 32)
	l13.add_theme_color_override("font_color", Color("#2dd4bf"))
	l13.set_anchors_and_offsets_preset(PRESET_CENTER)
	c13.preview.add_child(l13)
	preview_nodes["Card13_Label"] = l13
	preview_nodes["Card13_Preview"] = c13.preview
	var btn13 = Button.new()
	btn13.text = "觸發打擊頓幀"
	btn13.pressed.connect(play_effect_13)
	c13.vbox.add_child(btn13)

	# Card 14: Slime Jelly Wobble
	var c14 = _create_card_base("Card14", "14. 果凍流體蠕動", "Jelly", "阻尼正弦波動柔和連續變型。")
	var l14 = Label.new()
	l14.text = "SLIME!"
	l14.add_theme_font_size_override("font_size", 24)
	l14.add_theme_color_override("font_color", Color("#a3e635"))
	l14.set_anchors_and_offsets_preset(PRESET_CENTER)
	c14.preview.add_child(l14)
	preview_nodes["Card14_Label"] = l14
	var btn14 = Button.new()
	btn14.text = "擠壓果凍"
	btn14.pressed.connect(play_effect_14)
	c14.vbox.add_child(btn14)

	# Card 15: Arcade Speedlines Stamp
	var c15 = _create_card_base("Card15", "15. 街機速度線印章", "Arcade", "超大尺寸俯衝，砸入畫面。")
	var l15 = Label.new()
	l15.text = "STAGE 1"
	l15.add_theme_font_size_override("font_size", 26)
	l15.add_theme_color_override("font_color", Color("#e879f9"))
	l15.set_anchors_and_offsets_preset(PRESET_CENTER)
	c15.preview.add_child(l15)
	preview_nodes["Card15_Label"] = l15
	var btn15 = Button.new()
	btn15.text = "印章砸屏"
	btn15.pressed.connect(play_effect_15)
	c15.vbox.add_child(btn15)

# --- 特效實作函數 ---

func play_effect_1() -> void:
	var label = preview_nodes["Card1_Label"] as Label
	_update_pivot(label)
	var tween = create_tween()
	label.scale = Vector2(0.2, 1.8)
	tween.tween_property(label, "scale", Vector2(1.5, 0.6), 0.15).set_trans(Tween.TRANS_QUAD)
	tween.tween_property(label, "scale", Vector2(1.0, 1.0), 0.25).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

func play_effect_2() -> void:
	var label = preview_nodes["Card2_Label"] as Label
	_update_pivot(label)
	label.scale = Vector2(0.4, 0.4)
	var tween = create_tween()
	tween.tween_property(label, "scale", Vector2(2.5, 2.5), 0.45).set_trans(Tween.TRANS_EXPO).set_ease(Tween.EASE_IN)
	tween.tween_property(label, "scale", Vector2(1.0, 1.0), 0.15).set_trans(Tween.TRANS_SPRING)

func play_effect_3() -> void:
	var preview = preview_nodes["Card3_Preview"] as Panel
	var label = preview_nodes["Card3_Label"] as Label
	var orig_pos = label.position

	var flash_style = StyleBoxFlat.new()
	flash_style.bg_color = Color("#3f1d24")
	flash_style.set_corner_radius_all(8)
	preview.add_theme_stylebox_override("panel", flash_style)

	var tween = create_tween()
	for i in range(8):
		var offset = Vector2(randf_range(-6, 6), randf_range(-6, 6))
		tween.tween_property(label, "position", orig_pos + offset, 0.03)
	tween.tween_property(label, "position", orig_pos, 0.03)

	await get_tree().create_timer(0.2).timeout
	var default_style = StyleBoxFlat.new()
	default_style.bg_color = Color("#020617")
	default_style.set_corner_radius_all(8)
	preview.add_theme_stylebox_override("panel", default_style)

func play_effect_4() -> void:
	var preview = preview_nodes["Card4_Preview"] as Panel
	var float_lbl = Label.new()
	float_lbl.text = "+550 XP"
	float_lbl.add_theme_font_size_override("font_size", 18)
	float_lbl.add_theme_color_override("font_color", Color("#10b981"))
	preview.add_child(float_lbl)

	var start_pos = preview.size / 2.0 - Vector2(30, 10)
	float_lbl.position = start_pos

	var tween = create_tween().set_parallel(true)
	var target_pos = start_pos + Vector2(randf_range(-15, 15), -45)
	tween.tween_property(float_lbl, "position", target_pos, 0.7).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	tween.tween_property(float_lbl, "modulate:a", 0.0, 0.7).set_trans(Tween.TRANS_EXPO).set_ease(Tween.EASE_IN)
	tween.chain().tween_callback(float_lbl.queue_free)

func play_effect_5() -> void:
	var label = preview_nodes["Card5_Label"] as Label
	var preview = preview_nodes["Card5_Preview"] as Panel
	var full_text = "OVERDRIVE ACTIVATED!"
	label.text = ""

	var tween = create_tween()
	for i in range(full_text.length()):
		tween.tween_callback(func():
			label.text += full_text[i]
			_update_pivot(label)
			label.position = (preview.size / 2.0 - label.size / 2.0) + Vector2(randf_range(-3, 3), randf_range(-3, 3))
		)
		tween.tween_interval(0.04)

	tween.tween_callback(func(): label.position = preview.size / 2.0 - label.size / 2.0)

func play_effect_6() -> void:
	var rich = preview_nodes["Card6_RichLabel"] as RichTextLabel
	_update_pivot(rich)
	var tween = create_tween()
	tween.tween_property(rich, "scale", Vector2(1.2, 1.2), 0.1)
	tween.tween_property(rich, "scale", Vector2(1.0, 1.0), 0.2)

func play_effect_7() -> void:
	var rich = preview_nodes["Card7_RichLabel"] as RichTextLabel
	_update_pivot(rich)
	var tween = create_tween()
	tween.tween_property(rich, "scale", Vector2(1.3, 1.3), 0.15).set_trans(Tween.TRANS_BACK)
	tween.tween_property(rich, "scale", Vector2(1.0, 1.0), 0.15)

func play_effect_8() -> void:
	var label = preview_nodes["Card8_Label"] as Label
	var orig_text = "SYSTEM OVERRIDE"
	var orig_pos = label.position
	var chars = "!@#$%^&*()_+-=[]{}|;:,.<>?/0123456789"

	var tween = create_tween()
	for i in range(8):
		tween.tween_callback(func():
			var temp_text = ""
			for c in orig_text:
				if randf() > 0.4 and c != ' ':
					temp_text += chars[randi() % chars.length()]
				else:
					temp_text += c
			label.text = temp_text
			label.position = orig_pos + Vector2(randf_range(-5, 5), randf_range(-2, 2))
			label.add_theme_color_override("font_color", Color("#06b6d4") if i % 2 == 0 else Color("#ef4444"))
		)
		tween.tween_interval(0.04)

	tween.tween_callback(func():
		label.text = orig_text
		label.position = orig_pos
		label.add_theme_color_override("font_color", Color("#ef4444"))
	)

func play_effect_9() -> void:
	combo_count += 1
	var label = preview_nodes["Card9_Label"] as Label
	label.text = str(combo_count) + " HITS!"
	_update_pivot(label)

	var heat_hue = max(0.0, 0.12 - (combo_count - 12) * 0.01)
	label.add_theme_color_override("font_color", Color.from_hsv(heat_hue, 1.0, 1.0))

	var tween = create_tween()
	label.scale = Vector2(2.2, 2.2)
	tween.tween_property(label, "scale", Vector2(1.0, 1.0), 0.25).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)

func play_effect_10() -> void:
	var preview = preview_nodes["Card10_Preview"] as Panel
	var coin_text = "+1,000"

	for child in preview.get_children():
		child.queue_free()

	var start_x = preview.size.x / 2.0 - (coin_text.length() * 12.0)

	for i in range(coin_text.length()):
		var char_lbl = Label.new()
		char_lbl.text = coin_text[i]
		char_lbl.add_theme_font_size_override("font_size", 22)
		char_lbl.add_theme_color_override("font_color", Color("#facc15"))
		preview.add_child(char_lbl)

		char_lbl.position = Vector2(start_x + i * 20.0, -30)
		var target_y = preview.size.y / 2.0 - 15.0

		var tween = create_tween()
		tween.tween_interval(i * 0.04)
		tween.tween_property(char_lbl, "position:y", target_y, 0.35).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)

func play_effect_11() -> void:
	var preview = preview_nodes["Card11_Preview"] as Panel
	var label = preview_nodes["Card11_Label"] as Label
	label.modulate.a = 0.0

	for i in range(25):
		var p = ColorRect.new()
		p.size = Vector2(4, 4)
		p.color = Color("#e5e7eb")
		preview.add_child(p)

		var start_p = preview.size / 2.0 + Vector2(randf_range(-30, 30), randf_range(-10, 10))
		p.position = start_p

		var target_p = start_p + Vector2(randf_range(-60, 60), randf_range(-40, 60))
		var tween = create_tween().set_parallel(true)
		tween.tween_property(p, "position", target_p, 0.5).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
		tween.tween_property(p, "modulate:a", 0.0, 0.5)
		tween.chain().tween_callback(p.queue_free)

	get_tree().create_timer(0.6).timeout.connect(func():
		if is_instance_valid(label):
			create_tween().tween_property(label, "modulate:a", 1.0, 0.2)
	)

func play_effect_12() -> void:
	var preview = preview_nodes["Card12_Preview"] as Panel
	var label = preview_nodes["Card12_Label"] as Label
	label.scale = Vector2.ZERO
	_update_pivot(label)

	var center = preview.size / 2.0
	for i in range(20):
		var p = ColorRect.new()
		p.size = Vector2(3, 3)
		p.color = Color("#93c5fd")
		preview.add_child(p)

		var angle = randf() * TAU
		var dist = randf_range(50, 90)
		p.position = center + Vector2(cos(angle), sin(angle)) * dist

		var tween = create_tween()
		tween.tween_property(p, "position", center, 0.35).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
		tween.tween_callback(p.queue_free)

	await get_tree().create_timer(0.35).timeout
	var pop_tween = create_tween()
	pop_tween.tween_property(label, "scale", Vector2(1.0, 1.0), 0.2).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

func play_effect_13() -> void:
	var preview = preview_nodes["Card13_Preview"] as Panel
	var label = preview_nodes["Card13_Label"] as Label
	_update_pivot(label)

	var flash_style = StyleBoxFlat.new()
	flash_style.bg_color = Color.WHITE
	flash_style.set_corner_radius_all(8)
	preview.add_theme_stylebox_override("panel", flash_style)
	label.modulate = Color.BLACK

	await get_tree().create_timer(0.08).timeout

	var default_style = StyleBoxFlat.new()
	default_style.bg_color = Color("#020617")
	default_style.set_corner_radius_all(8)
	preview.add_theme_stylebox_override("panel", default_style)
	label.modulate = Color.WHITE

	var tween = create_tween()
	label.scale = Vector2(2.0, 2.0)
	tween.tween_property(label, "scale", Vector2(1.0, 1.0), 0.2).set_trans(Tween.TRANS_BACK)

func play_effect_14() -> void:
	var label = preview_nodes["Card14_Label"] as Label
	_update_pivot(label)
	is_wobbling = true
	wobble_time = 0.0

func play_effect_15() -> void:
	var label = preview_nodes["Card15_Label"] as Label
	_update_pivot(label)
	var tween = create_tween()
	label.scale = Vector2(5.0, 5.0)
	label.modulate.a = 0.0
	tween.set_parallel(true)
	tween.tween_property(label, "scale", Vector2(1.0, 1.0), 0.2).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(label, "modulate:a", 1.0, 0.15)

# 順序連發觸發 15 種特效
func _on_trigger_all_pressed() -> void:
	var effects = [
		play_effect_1, play_effect_2, play_effect_3, play_effect_4, play_effect_5,
		play_effect_6, play_effect_7, play_effect_8, play_effect_9, play_effect_10,
		play_effect_11, play_effect_12, play_effect_13, play_effect_14, play_effect_15
	]

	for effect in effects:
		effect.call()
		await get_tree().create_timer(0.1).timeout
