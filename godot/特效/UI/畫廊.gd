# ==========================================
# 🌟 Godot 4 動態水波反射畫廊 (Gallery with Water Reflection)
# ==========================================
# 說明：將此腳本附加到任何 Control 節點上即可直接運行。
# 所有節點、Shader、粒子效果皆由程式碼動態建立。

extends Control

# --- 可調整參數 ---
const ANIM_DURATION: float = 0.45          # 卡片伸縮動畫時間 (秒)
const CARD_HOVER_RATIO: float = 3.0       # 懸停卡片佔寬比例
const CARD_NORMAL_RATIO: float = 1.0      # 預設卡片佔寬比例
const CARD_MIN_RATIO: float = 0.5         # 未懸停卡片被擠壓後的最小比例
const REFLECTION_OPACITY: float = 0.55    # 反射畫面的透明度

# 這裡可以替換為您專案中的圖片路徑
# 如果路徑不存在，會自動生成美麗的漸層色彩作為替代
const CARD_IMAGES: Array[String] = [

	"res://addons/gallery/img1.jpg",
	"res://addons/gallery/img2.jpg",
	"res://addons/gallery/img3.jpg",
	"res://addons/gallery/img4.jpg",
	"res://addons/gallery/img5.jpg",
	"res://addons/gallery/img6.jpg",
	"res://addons/gallery/img7.jpg"
]

# --- 內部節點引用 ---
var sub_viewport: SubViewport
var hbox_container: HBoxContainer
var reflection_rect: TextureRect
var card_nodes: Array[TextureRect] = []
var active_tweens: Dictionary = {}

func _ready() -> void:
	# 1. 設置主視窗屬性，確保佈局自適應螢幕
	anchors_preset = PRESET_FULL_RECT
	
	# 2. 建立精美的暗色漸層背景
	create_background()
	
	# 3. 建立背景微塵粒子
	create_particles()
	
	# 4. 建立畫廊容器與 SubViewport (為了實現完美反射，必須先渲染至 Viewport)
	setup_viewport_and_gallery()
	
	# 5. 建立水波反射器
	setup_reflection()
	
	# 6. 當視窗大小改變時，自動調整位置
	get_viewport().size_changed.connect(_on_window_resized)
	_on_window_resized()

# --- 建立暗色質感背景 ---
func create_background() -> void:
	var bg = ColorRect.new()
	bg.name = "Background"
	bg.anchors_preset = PRESET_FULL_RECT
	bg.color = Color(0.08, 0.08, 0.1, 1.0)
	add_child(bg)

# --- 建立背景微塵粒子系統 ---
func create_particles() -> void:
	var particles = CPUParticles2D.new()
	particles.name = "BgParticles"
	particles.position = Vector2(size.x / 2, size.y / 2)
	particles.amount = 45
	particles.lifetime = 6.0
	particles.preprocess = 3.0
	particles.emission_shape = CPUParticles2D.EMISSION_SHAPE_RECTANGLE
	particles.emission_rect_extents = Vector2(960, 540)
	particles.direction = Vector2(0, -1)
	particles.spread = 15.0
	particles.gravity = Vector2(0, -2)
	particles.initial_velocity_min = 10.0
	particles.initial_velocity_max = 30.0
	particles.scale_amount_min = 1.0
	particles.scale_amount_max = 4.0
	
	# 建立粒子漸變色 (從亮白淡出至透明)
	var grad = Gradient.new()
	grad.set_color(0, Color(1, 1, 1, 0))
	grad.add_point(0.2, Color(1, 1, 1, 0.4))
	grad.add_point(0.8, Color(1, 1, 1, 0.3))
	grad.add_point(1.0, Color(1, 1, 1, 0))
	particles.color_ramp = grad
	
	add_child(particles)

# --- 設定畫廊與 Viewport 結構 ---
func setup_viewport_and_gallery() -> void:
	# 建立 Viewport 容器，隱藏直接顯示，我們只拿它來做反射與主畫面繪製
	var vp_container = SubViewportContainer.new()
	vp_container.name = "GalleryViewportContainer"
	vp_container.anchors_preset = PRESET_CENTER
	# 保持滑鼠事件能夠穿透傳遞
	vp_container.mouse_filter = Control.MOUSE_FILTER_PASS
	add_child(vp_container)
	
	sub_viewport = SubViewport.new()
	sub_viewport.name = "GalleryViewport"
	sub_viewport.size = Vector2(1100, 420)
	sub_viewport.transparent_bg = true
	sub_viewport.canvas_item_default_texture_filter = SubViewport.DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS
	vp_container.add_child(sub_viewport)
	
	# 在 Viewport 內建立 HBoxContainer
	hbox_container = HBoxContainer.new()
	hbox_container.name = "GalleryHBox"
	hbox_container.set_anchors_and_offsets_preset(PRESET_FULL_RECT)
	# 卡片之間的間距
	hbox_container.add_theme_constant_override("separation", 15)
	sub_viewport.add_child(hbox_container)
	
	# 建立卡片
	for i in range(CARD_IMAGES.size()):
		create_gallery_card(i)

# --- 建立單張卡片 ---
func create_gallery_card(index: int) -> void:
	var card = TextureRect.new()
	card.name = "Card_" + str(index)
	card.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	card.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
	card.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	card.size_flags_stretch_ratio = CARD_NORMAL_RATIO
	card.mouse_filter = Control.MOUSE_FILTER_STOP
	
	# 載入或自動生成卡片圖片
	var tex = load_card_texture(index)
	card.texture = tex
	
	# 附加圓角與發光邊框 Shader
	var card_material = ShaderMaterial.new()
	card_material.shader = get_card_shader()
	card_material.set_shader_parameter("corner_radius", 0.08)
	card_material.set_shader_parameter("border_width", 0.008)
	card_material.set_shader_parameter("border_color", Color(1.0, 1.0, 1.0, 0.85))
	card.material = card_material
	
	# 綁定滑鼠互動事件
	card.mouse_entered.connect(func(): _on_card_hovered(index))
	card.mouse_exited.connect(func(): _on_card_unhovered())
	
	hbox_container.add_child(card)
	card_nodes.append(card)

# --- 載入或生成美麗的卡片漸層色 ---
func load_card_texture(index: int) -> Texture2D:
	var path = CARD_IMAGES[index]
	if ResourceLoader.exists(path):
		var img = load(path)
		if img is Texture2D:
			return img
			
	# 如果沒有自訂圖片，則使用程式碼動態生成 7 種大自然色系的漸層，美觀且不報錯
	var grad = Gradient.new()
	var colors = [
		[Color(0.2, 0.15, 0.1), Color(0.1, 0.05, 0.05)], # 深秋森林
		[Color(0.1, 0.2, 0.15), Color(0.05, 0.1, 0.08)], # 迷霧竹林
		[Color(0.15, 0.25, 0.3), Color(0.08, 0.12, 0.15)], # 冰川湖泊
		[Color(0.3, 0.25, 0.2), Color(0.15, 0.1, 0.08)], # 晨曦海岸
		[Color(0.25, 0.15, 0.25), Color(0.1, 0.05, 0.1)], # 暮色山谷
		[Color(0.1, 0.1, 0.15), Color(0.02, 0.02, 0.05)], # 深邃極光
		[Color(0.3, 0.15, 0.15), Color(0.15, 0.05, 0.05)]  # 紅土夕陽
	]
	
	var active_color_pair = colors[index % colors.size()]
	grad.set_color(0, active_color_pair[0])
	grad.set_color(1, active_color_pair[1])
	
	var tex = GradientTexture2D.new()
	tex.gradient = grad
	tex.fill_from = Vector2(0.5, 0.0)
	tex.fill_to = Vector2(0.5, 1.0)
	tex.width = 250
	tex.height = 600
	return tex

# --- 建立水波反射效果 ---
func setup_reflection() -> void:
	reflection_rect = TextureRect.new()
	reflection_rect.name = "WaterReflection"
	# 直接讀取 SubViewport 的即時快照，保證動畫同步
	reflection_rect.texture = sub_viewport.get_texture()
	reflection_rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	
	# 設定水波與漸變淡出 Shader
	var ref_material = ShaderMaterial.new()
	ref_material.shader = get_reflection_shader()
	ref_material.set_shader_parameter("wave_speed", 1.8)
	ref_material.set_shader_parameter("wave_amplitude", 0.008)
	ref_material.set_shader_parameter("wave_frequency", 12.0)
	ref_material.set_shader_parameter("reflection_opacity", REFLECTION_OPACITY)
	
	reflection_rect.material = ref_material
	add_child(reflection_rect)

# --- 視窗縮放與元件自動排版排程 ---
func _on_window_resized() -> void:
	var screen_size = size
	
	# 計算畫廊主體的位置 (置中稍微偏上)
	var gallery_w = clamp(screen_size.x * 0.8, 800, 1200)
	var gallery_h = clamp(screen_size.y * 0.45, 300, 500)
	
	sub_viewport.size = Vector2(gallery_w, gallery_h)
	
	# 設定畫廊主 Viewport 容器位置
	var vp_container = get_node("GalleryViewportContainer") as Control
	vp_container.size = Vector2(gallery_w, gallery_h)
	vp_container.position = Vector2(
		(screen_size.x - gallery_w) / 2,
		(screen_size.y - gallery_h) / 2 - gallery_h * 0.15
	)
	
	# 設定反射區域位置 (剛好緊貼畫廊正下方，上下鏡像)
	reflection_rect.size = Vector2(gallery_w, gallery_h * 0.8) # 反射高度略矮一些更自然
	reflection_rect.position = Vector2(
		vp_container.position.x,
		vp_container.position.y + gallery_h + 3.0 # 留出 3 像素微小縫隙
	)
	
	# 更新背景粒子中心點
	var particles = get_node_or_null("BgParticles") as CPUParticles2D
	if particles:
		particles.position = Vector2(screen_size.x / 2, screen_size.y / 2)
		particles.emission_rect_extents = Vector2(screen_size.x / 2, screen_size.y / 2)

# --- 滑鼠懸停動畫邏輯 (風琴式伸縮) ---
func _on_card_hovered(hovered_index: int) -> void:
	# 停止現有的所有卡片伸縮動畫，避免衝突
	kill_all_active_tweens()
	
	var tween = create_tween().set_parallel(true)
	active_tweens["hover"] = tween
	
	for i in range(card_nodes.size()):
		var card = card_nodes[i]
		var target_ratio: float = CARD_MIN_RATIO
		
		if i == hovered_index:
			target_ratio = CARD_HOVER_RATIO
		else:
			# 其他卡片依據總長度自動分配剩餘空間
			target_ratio = (float(card_nodes.size()) - CARD_HOVER_RATIO) / float(card_nodes.size() - 1)
			target_ratio = max(target_ratio, CARD_MIN_RATIO)
			
		# 平滑地動畫過渡 stretch_ratio，Godot 4 的 HBoxContainer 會自動優雅地重新排版！
		tween.tween_property(card, "size_flags_stretch_ratio", target_ratio, ANIM_DURATION)\
			.set_trans(Tween.TRANS_SINE)\
			.set_ease(Tween.EASE_OUT)

# --- 滑鼠離開還原動畫 ---
func _on_card_unhovered() -> void:
	kill_all_active_tweens()
	
	var tween = create_tween().set_parallel(true)
	active_tweens["unhover"] = tween
	
	for card in card_nodes:
		tween.tween_property(card, "size_flags_stretch_ratio", CARD_NORMAL_RATIO, ANIM_DURATION)\
			.set_trans(Tween.TRANS_SINE)\
			.set_ease(Tween.EASE_OUT)

func kill_all_active_tweens() -> void:
	for key in active_tweens.keys():
		var t = active_tweens[key]
		if t and t.is_valid():
			t.kill()
	active_tweens.clear()

# ==========================================
# 🎛️ SHADER 程式碼生成區
# ==========================================

# 1. 卡片圓角與高質感微亮發光邊框 Shader (使用高效 SDF 演算法)
func get_card_shader() -> Shader:
	var shader = Shader.new()
	shader.code = """
	shader_type canvas_item;

	uniform float corner_radius : hint_range(0.0, 0.5) = 0.1;
	uniform vec4 border_color : source_color = vec4(1.0, 1.0, 1.0, 0.8);
	uniform float border_width : hint_range(0.0, 0.05) = 0.01;

	// SDF (有向距離場) 計算圓角矩形
	float sd_rounded_rect(in vec2 p, in vec2 b, in float r) {
		vec2 q = abs(p) - b + vec2(r);
		return min(max(q.x, q.y), 0.0) + length(max(q, 0.0)) - r;
	}

	void fragment() {
		// 將 UV 轉換至中心點原點 (-0.5 ~ 0.5)
		vec2 uv = UV - 0.5;
		vec2 half_size = vec2(0.5);
		
		// 計算目前像素到圓角邊緣的距離
		float d = sd_rounded_rect(uv, half_size, corner_radius);

		// 超出圓角矩形邊界，予以裁切透明
		if (d > 0.0) {
			discard;
		}

		vec4 tex_color = texture(TEXTURE, UV);
		
		// 繪製細緻的邊框線
		if (d > -border_width) {
			// 平滑抗鋸齒過渡
			float border_factor = smoothstep(-border_width, -border_width + 0.003, d);
			COLOR = mix(tex_color, border_color, border_factor);
		} else {
			COLOR = tex_color;
		}
	}
	"""
	return shader

# 2. 仿真水面波浪、動態扭曲與漸變衰減反射 Shader
func get_reflection_shader() -> Shader:
	var shader = Shader.new()
	shader.code = """
	shader_type canvas_item;

	uniform float wave_speed = 1.5;
	uniform float wave_amplitude = 0.01;
	uniform float wave_frequency = 15.0;
	uniform float reflection_opacity = 0.6;

	void fragment() {
		vec2 uv = UV;
		
		// 產生水平方向的正弦波浪扭曲效果
		// 越往下方 (uv.y 越大) 扭曲程度越大，模擬近水波紋較大、遠處平靜的透視感
		float depth_factor = uv.y;
		float wave = sin(uv.y * wave_frequency + TIME * wave_speed) * wave_amplitude * depth_factor;
		uv.x += wave;
		
		// 鏡像翻轉 Viewport 紋理 (水面倒影是上下顛倒的)
		vec2 sample_uv = vec2(uv.x, 1.0 - uv.y);
		vec4 color = texture(TEXTURE, sample_uv);
		
		// 實作水面反射漸變消失 (越往下越透明)
		float fade_out = smoothstep(0.9, 0.0, uv.y);
		
		// 混合基礎透明度與漸變
		color.a *= fade_out * reflection_opacity;
		
		// 融入些微的水色調 (深冷藍色)，讓反射質感更逼真
		vec3 water_color = vec3(0.1, 0.12, 0.18);
		color.rgb = mix(color.rgb, water_color, 0.15);
		
		COLOR = color;
	}
	"""
	return shader
