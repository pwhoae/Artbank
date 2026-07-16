Godot 3D 水體 (Water) Shader 撰寫與使用指南

本指南帶領你使用 Godot 的 spatial（3D） 著色器，打造一個擁有動態波浪、波光粼粼，且具備螢幕折射 (Refraction)與動態焦散水紋 (Caustics) 的進階 3D 水體效果。

針對 "water.jpg" 中深邃、神秘的暗色調，我們採用了基於費涅爾效應（Fresnel Effect）的混色機制，當俯視水面時會呈現清澈的折射水紋，而平視時則會反射出深暗的高光。

1. 3D 折射與水紋 Shader 原始碼 (spatial)

請將你的 water_3d.gdshader 程式碼更新為以下內容：

shader_type spatial;
// 這裡將 render_mode 改為 blend_mix，我們將在 fragment 中手動處理半透明折射，這能完美避免 3D 透明度排序（Depth Sorting）的 Bug
render_mode render_blend, depth_draw_always, diffuse_lambert, specular_schlick_ggx;

// --- 1. 定義可調整的參數 (Uniforms) ---
group_uniforms WaterColor;
uniform vec4 shallow_color : source_color = vec4(0.0, 0.4, 0.55, 1.0); // 淺水區顏色
uniform vec4 deep_color : source_color = vec4(0.02, 0.05, 0.1, 1.0);  // 深水區顏色（對應 water.jpg 的深暗色調）
uniform float color_height_scale : hint_range(0.1, 3.0) = 1.0;          // 顏色隨高度變化的過渡敏感度

group_uniforms Waves;
uniform float wave_speed : hint_range(0.05, 5.0) = 1.0;                 // 波浪流動速度
uniform float wave_amplitude_1 : hint_range(0.0, 1.0) = 0.15;           // 大波浪高度
uniform float wave_frequency_1 : hint_range(0.1, 10.0) = 1.5;           // 大波浪密集度
uniform float wave_amplitude_2 : hint_range(0.0, 1.0) = 0.05;           // 小波浪高度
uniform float wave_frequency_2 : hint_range(0.1, 20.0) = 4.0;           // 小波浪密集度

group_uniforms SurfaceRipples;
uniform sampler2D noise_texture : filter_linear_mipmap, repeat_enable; // 雜訊貼圖（用來製造水面細微反光波紋）
uniform float ripple_speed : hint_range(0.01, 1.0) = 0.08;             // 細微波紋滾動速度
uniform float roughness : hint_range(0.0, 1.0) = 0.05;                  // 粗糙度
uniform float metallic : hint_range(0.0, 1.0) = 0.1;                    // 金屬度

group_uniforms Refraction;
// 螢幕貼圖（Godot 4 內建獲取螢幕畫面進行折射）
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;
uniform float refraction_strength : hint_range(0.0, 1.0) = 0.15;        // 折射扭曲強度

group_uniforms Caustics;
uniform sampler2D caustic_texture : filter_linear_mipmap, repeat_enable; // 焦散水紋貼圖（建議使用 Cellular 類型的雜訊）
uniform float caustic_scale : hint_range(0.1, 10.0) = 1.5;              // 水紋大小
uniform float caustic_speed : hint_range(0.01, 1.0) = 0.06;             // 水紋流動速度
uniform float caustic_strength : hint_range(0.0, 3.0) = 1.0;            // 水紋亮度強度

// 傳遞給 fragment 的變數
varying float vertex_height;

// --- 2. 頂點著色器：負責波浪起伏 ---
void vertex() {
	// 混合兩個不同方向與頻率的正弦/餘弦波
	float w1 = sin(VERTEX.x * wave_frequency_1 + TIME * wave_speed) * cos(VERTEX.z * wave_frequency_1 + TIME * wave_speed);
	float w2 = cos(VERTEX.x * wave_frequency_2 - TIME * wave_speed * 1.5) * sin(VERTEX.z * wave_frequency_2 + TIME * wave_speed * 1.2);
	
	// 計算最終高度位移並套用至頂點的 Y 軸
	float displacement = (w1 * wave_amplitude_1) + (w2 * wave_amplitude_2);
	VERTEX.y += displacement;
	
	// 將高度資訊傳遞給片段著色器
	vertex_height = displacement;
}

// --- 3. 片段著色器：負責顏色、波光與折射水紋 ---
void fragment() {
	// A. 基礎顏色計算（高度插值）
	float max_possible_height = wave_amplitude_1 + wave_amplitude_2;
	float height_factor = (vertex_height + max_possible_height) / (max_possible_height * 2.0);
	height_factor = clamp(height_factor * color_height_scale, 0.0, 1.0);
	vec4 water_base_color = mix(deep_color, shallow_color, height_factor);
	
	// B. 雙重雜訊貼圖滾動，計算水面 Normal
	vec2 speed_offset = vec2(TIME * ripple_speed);
	vec2 uv_scroll1 = UV * 4.0 + speed_offset * 0.1;
	vec2 uv_scroll2 = UV * 4.0 - speed_offset * 0.15;
	
	vec3 ripple_normal1 = texture(noise_texture, uv_scroll1).rgb * 2.0 - 1.0;
	vec3 ripple_normal2 = texture(noise_texture, uv_scroll2).rgb * 2.0 - 1.0;
	vec3 blended_normal = normalize(ripple_normal1 + ripple_normal2);
	
	// C. 折射效果（Refraction）
	// 利用法線貼圖的 X, Y 軸去偏移 SCREEN_UV
	vec2 refract_offset = blended_normal.xy * refraction_strength * 0.1;
	vec3 background_color = texture(screen_texture, SCREEN_UV + refract_offset).rgb;
	
	// D. 焦散水紋效果（Caustics）
	// 使用相乘混合兩張不同方向滾動的水紋貼圖，做出波光躍動交織感
	vec2 c_speed = vec2(TIME * caustic_speed);
	vec2 caustic_uv1 = UV * caustic_scale + c_speed * 0.5;
	vec2 caustic_uv2 = UV * caustic_scale - c_speed * 0.7;
	
	float caustic_1 = texture(caustic_texture, caustic_uv1).r;
	float caustic_2 = texture(caustic_texture, caustic_uv2).r;
	// 相乘並強化對比度，形成網格狀的明亮焦散線
	float combined_caustic = pow(caustic_1 * caustic_2, 1.5) * caustic_strength;
	
	// E. 費涅爾效應（Fresnel Effect）
	// $F \approx (1.0 - \vec{N} \cdot \vec{V})^3$
	float fresnel = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), 3.0);
	
	// F. 色彩最終合成
	// 當我們直視水面（fresnel 低），呈現「背景折射」與「水底水紋」；
	// 當我們平視水面（fresnel 高），呈現「水體本身顏色（深淺漸層）」，並反射環境光。
	vec3 underwater_mix = background_color + (vec3(combined_caustic) * (1.0 - height_factor));
	vec3 final_color = mix(underwater_mix, water_base_color.rgb, fresnel);
	
	// G. 輸出 PBR 屬性
	ALBEDO = final_color;
	NORMAL_MAP = blended_normal;
	NORMAL_MAP_DEPTH = 0.25;
	
	METALLIC = metallic;
	ROUGHNESS = roughness;
	SPECULAR = 0.9;
	
	// 保持 ALPHA = 1.0 可以防止 Godot 3D 複雜的半透明渲染排序錯誤，
	// 因為我們已經手動用 screen_texture 做出了完美的物理折射與清澈感！
	ALPHA = 1.0; 
}


2. 如何配置「折射與焦散水紋」參數

更新完程式碼後，回到 Godot 的 Inspector 面板，你會看到新增了 Refraction 與 Caustics 參數區塊。請按照以下步驟設置：

步驟一：開啟折射與背景抓取

折射必須要有背景物體。請在 3D 場景中，在你的水體下方放置一些 3D 靜態物體（如岩石、海底泥沙或測試方塊）。

特別注意： 水面 MeshInstance3D 的 Material -> Render Priority（渲染優先級）如果可以，建議設為 1（或比水底物體稍高），這能確保 Godot 先繪製背景，再由水體 Shader 進行折射抓取。

步驟二：設置焦散水紋貼圖 (Caustic Texture)

為了呈現最真實、網格狀的陽光水紋：

展開 Shader Parameters 下的 Caustics 區塊。

點擊 Caustic Texture 欄位，選擇 New NoiseTexture2D。

點擊進入該 NoiseTexture2D：

勾選 Seamless (無縫循環) ── 這是一定要勾的，否則流動時會有破圖線。

點擊 Noise 欄位，選擇 New FastNoiseLite。

點擊進入 FastNoiseLite 進行關鍵微調：

Noise Type：改成 Cellular（細胞狀雜訊）。

Frequency (頻率)：可以設在 0.02 到 0.05 之間。

Cellular 展開：

將 Return Type 改成 Distance 2 Div 或 Distance（這會將細胞雜訊轉換為漂亮的「網格線條狀」，完美模擬水下波光線條！）。

Jitter (抖動)：保持在 1.0 左右，讓網格看起來有機自然。

💡 物理調校建議（搭配 "water.jpg" 調色）

水面折射感： 微調 Refraction Strength。當角色或物體浸入水中時，你會看到水面下的部分因為水波流動產生了非常擬真的「動態折射扭曲」！

暗水焦散： 由於 $water.jpg$ 是極其暗色調的水域，建議將 Caustic Strength 控制在 1.0 ~ 1.5 左右，不要讓水紋過亮，能隱隱約約在深邃的暗藍色水底閃爍，能將神祕的氛圍感直接拉滿。
