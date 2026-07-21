shader_type canvas_item;

// --- 介面屬性 (Uniforms) ---
group_uniforms RingSettings;
uniform float ring_radius : hint_range(0.0, 1.0) = 0.25;         // 圓環半徑
uniform float ring_thickness : hint_range(0.001, 0.1) = 0.012;   // 圓環核心厚度
uniform float glow_strength : hint_range(0.0, 3.0) = 1.2;        // 霓虹光暈強度
uniform float aspect_ratio = 1.0;                               // 寬高比 (若非正方形可手動調整)

group_uniforms WaveSettings;
uniform float wave_amplitude : hint_range(0.0, 0.2) = 0.04;      // 波浪振幅 (變形量)
uniform float wave_speed : hint_range(0.0, 10.0) = 1.8;          // 波動速度
uniform float noise_scale : hint_range(0.1, 20.0) = 4.0;         // 噪點細緻度

group_uniforms ColorSettings;
uniform vec4 color_a : source_color = vec4(0.8, 0.2, 0.9, 1.0);  // 漸變色 A (紫紅)
uniform vec4 color_b : source_color = vec4(0.2, 0.8, 0.9, 1.0);  // 漸變色 B (青綠)
uniform float color_speed : hint_range(0.0, 10.0) = 1.0;         // 色彩變幻速度

// --- 隨機與噪點生成函式 (由影片中 HLSL 移植) ---

// 2D 雜湊函式
float hash21(vec2 p) {
	return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453123);
}

// 2D 價值噪點 (Value Noise)
float noise(vec2 p) {
	vec2 cell = floor(p);
	vec2 local = fract(p);
	// 類似 smoothstep 的平滑插值
	vec2 blend = local * local * (3.0 - 2.0 * local);
	
	float bottom = mix(hash21(cell), hash21(cell + vec2(1.0, 0.0)), blend.x);
	float top = mix(hash21(cell + vec2(0.0, 1.0)), hash21(cell + vec2(1.0, 1.0)), blend.x);
	
	return mix(bottom, top, blend.y);
}

// 3 階分形布朗運動 (Fractal Brownian Motion)
float fbm(vec2 p) {
	float result = 0.0;
	float amplitude = 1.0;
	float amplitude_sum = 0.0;
	
	// 影片中的 2x2 旋轉矩陣 (角度約 0.9 弧度)
	float angle = 0.9;
	mat2 rotation = mat2(
		vec2(cos(angle), sin(angle)),
		vec2(-sin(angle), cos(angle))
	);
	
	for (int i = 0; i < 3; i++) {
		result += amplitude * noise(p);
		amplitude_sum += amplitude;
		p = (p * rotation) * 2.05 + vec2(17.75);
		amplitude *= 0.5;
	}
	
	return result / amplitude_sum;
}

// --- 渲染片段 ---
void fragment() {
	// 將 UV 座標中心化至原點 (-0.5 到 0.5)
	vec2 uv = UV - vec2(0.5);
	// 修正寬高比，保持圓環為正圓
	uv.x *= aspect_ratio;
	
	// 計算極座標 (距離與角度)
	float dist = length(uv);
	float angle = atan(uv.y, uv.x);
	
	// 建立周圍封閉的環狀採樣向量，使噪點在圓環接縫處完美閉合
	vec2 sample_dir = vec2(cos(angle), sin(angle));
	
	// 透過 FBM 獲取動態波形數值
	float wave = fbm(sample_dir * noise_scale + vec2(TIME * wave_speed));
	
	// 將動態波形融入圓環半徑中
	float target_radius = ring_radius + wave * wave_amplitude;
	
	// 計算當前像素與圓環邊緣的實際距離
	float ring_dist = abs(dist - target_radius);
	
	// 1. 計算高亮度核心圓環 (具有抗鋸齒邊緣)
	float core = smoothstep(ring_thickness, 0.0, ring_dist);
	
	// 2. 計算外圍霓虹光暈 (漸近線公式，模擬物理光效衰減)
	float glow = ring_thickness / (ring_dist + 0.005);
	glow = pow(glow, 1.4) * glow_strength;
	
	// 3. 計算隨時間和角度變化的雙色漸變色彩
	float color_factor = sin(angle + TIME * color_speed) * 0.5 + 0.5;
	vec4 final_color = mix(color_a, color_b, color_factor);
	
	// 4. 合併核心與光暈強度
	float total_intensity = core + glow;
	
	// 輸出最終顏色與透明度
	COLOR = vec4(final_color.rgb * total_intensity, clamp(total_intensity, 0.0, 1.0) * final_color.a);
}