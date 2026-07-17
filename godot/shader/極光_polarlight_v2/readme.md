https://share.gemini.google/KWOM0AxJKl37
好的，這裡是一個為您量身定制的Godot Sky Shader代碼，不僅能生成像參考圖 image_0.png 那樣絢麗的紫色和藍色極光，還加入了豐富的動感。

這個 Shader 使用了多層噪點（Noise）和時間偏移來模擬極光流動、波動和強度變化的效果。

### Godot 4 Sky Shader 代碼

請將以下代碼複製到您的 Godot `SkyMaterial` 的 `Shader` 屬性中。

```gdscript
shader_type sky;

// --- Uniforms (可在編輯器中調整的參數) ---

group_uniforms aurora_colors;
uniform vec3 aurora_color_1 : source_color = vec3(0.1, 0.0, 0.3); // 深紫
uniform vec3 aurora_color_2 : source_color = vec3(0.5, 0.0, 0.8); // 亮紫 (像 image_0.png)
uniform vec3 aurora_color_3 : source_color = vec3(0.2, 0.7, 0.9); // 藍綠 (像 image_0.png)
uniform float color_bias : hint_range(0.0, 1.0) = 0.5;           // 顏色偏向
group_uniforms;

group_uniforms aurora_motion;
uniform float speed_scale : hint_range(0.0, 2.0) = 0.1;          // 整體速度
uniform vec2 flow_direction = vec2(1.0, 0.2);                    // 流動方向
uniform float wave_intensity : hint_range(0.0, 1.0) = 0.3;       // 波動強度
uniform float flicker_speed : hint_range(0.0, 5.0) = 1.0;        // 閃爍速度
group_uniforms;

group_uniforms aurora_shape;
uniform float spread : hint_range(0.1, 2.0) = 0.8;               // 極光覆蓋範圍
uniform float edge_softness : hint_range(0.0, 1.0) = 0.5;        // 邊緣柔和度
uniform float intensity_master : hint_range(0.0, 5.0) = 1.5;     // 總亮度
uniform float stars_opacity : hint_range(0.0, 1.0) = 0.1;       // 背景星星透明度
group_uniforms;

// --- 噪點函數 (Noise Functions) ---
// 使用經典的 2D 噪點

float hash(vec2 p) {
	p = fract(p * vec2(123.34, 456.21));
	p += dot(p, p + 45.32);
	return fract(p.x * p.y);
}

float noise(vec2 p) {
	vec2 i = floor(p);
	vec2 f = fract(p);
	float a = hash(i);
	float b = hash(i + vec2(1.0, 0.0));
	float c = hash(i + vec2(0.0, 1.0));
	float d = hash(i + vec2(1.0, 1.0));
	vec2 u = f * f * (3.0 - 2.0 * f);
	return mix(a, b, u.x) + (c - a) * u.y * (1.0 - u.x) + (d - b) * u.x * u.y;
}

// 分形布朗運動 (FBM) 用於更複雜的細節
float fbm(vec2 p, int octaves) {
	float v = 0.0;
	float a = 0.5;
	mat2 rot = mat2(vec2(1.6, 1.2), vec2(-1.2, 1.6));
	for (int i = 0; i < octaves; i++) {
		v += a * noise(p);
		p = rot * p * 2.0;
		a *= 0.5;
	}
	return v;
}

// --- 核心 Sky 函數 ---

void sky() {
	// 1. 獲取基本的依賴於視角的坐標 (從天頂到地平線)
	float horizon_mask = 1.0 - pow(max(0.0, EYEDIR.y), 0.5); // 遮罩地平線
	vec2 sky_uv = EYEDIR.xz / (EYEDIR.y + 0.1); // 將視角方向映射到 2D 平面
	
	// 2. 應用動態效果
	float time = TIME * speed_scale;
	
	// a. 基礎流動：讓極光整體移動
	vec2 flow_uv = sky_uv + flow_direction * time;
	
	// b. 波動 (Warping)：讓極光像窗簾一樣扭曲
	float warp_noise = fbm(sky_uv * 0.5 + time * 0.2, 2);
	vec2 warped_uv = flow_uv + vec2(warp_noise * wave_intensity);
	
	// 3. 生成極光形狀 (多層噪點混合)
	float shape_noise = fbm(warped_uv * spread, 4);
	
	// 4. 計算強度 mask
	// 限制在天空的上部，並應用邊緣柔和
	float base_mask = smoothstep(edge_softness, 1.0 - edge_softness, shape_noise);
	base_mask *= pow(max(0.0, EYEDIR.y), 0.5); // 再次強化天頂，壓低地平線
	
	// c. 閃爍 (Flickering)：強度隨時間隨機變化
	float flicker = noise(vec2(time * flicker_speed, 0.0)) * 0.5 + 0.5;
	float final_mask = base_mask * flicker;
	
	// 5. 顏色合成
	// 根據噪點值在多種顏色之間插值 (模擬 image_0.png 的多層次)
	float color_t = smoothstep(0.3, 0.7, shape_noise + color_bias * 0.2);
	vec3 aurora_color = mix(mix(aurora_color_1, aurora_color_2, color_t), aurora_color_3, color_t * color_t);
	
	// 6. 應用最終強度
	vec3 final_aurora = aurora_color * final_mask * intensity_master;
	
	// 7. 加入簡單的星星 (像 image_0.png 那樣)
	vec2 star_uv = sky_uv * 100.0;
	float star_noise = hash(floor(star_uv));
	float star_mask = smoothstep(0.99, 1.0, star_noise);
	vec3 stars = vec3(star_mask) * stars_opacity;
	
	// 8. 最終輸出
	COLOR = final_aurora + stars;
}

```

### 如何增加動感 (代碼詳解)

這個 Shader 通過以下幾個關鍵技術來實現您要求的動感：

1. **基礎流動 (`flow_direction` and `time`)**:
* 在代碼的 `sky()` 函數中，我們計算了一個 `flow_uv`。它將基礎的 `sky_uv` 加上了隨時間變化的偏移：`vec2 flow_uv = sky_uv + flow_direction * time;`。
* 這會產生一個整體極光場像風一樣緩緩滑過天空的效果。


2. **波動 (Warping) (這點最關鍵)**:
* 極光不是平鋪的圖案，它們是像窗簾一樣扭曲的。
* 我們在核心形狀噪點之前，先用另一個低頻率的噪點 (`warp_noise`) 來扭曲 UV：`vec2 warped_uv = flow_uv + vec2(warp_noise * wave_intensity);`。
* 當這個 warp 噪點隨時間 (`time * 0.2`) 移動時，最終的極光形狀就會產生一種令人信服的、有機的扭曲和波浪效果，就像 `image_0.png` 中那些光帶在編織。


3. **閃爍 (Flickering)**:
* 真實的極光亮度會快速變化。
* 我們使用了一個基於時間的一維噪點 (`flicker`) 來乘在最終的 intensity mask 上：`float flicker = noise(vec2(time * flicker_speed, 0.0)) * 0.5 + 0.5;`。
* 這會讓極光整體的亮度產生隨機的起伏，增加生命力。



### 建議的參數設置 (在編輯器中)

為了得到像參考圖 `image_0.png` 那樣的視覺效果，您可以嘗試以下參數設置：

* **Aurora Colors (顏色)**:
* `Color 1`: 設為深紫色 (`#1a004d`)。
* `Color 2`: 設為明亮的洋紅色/紫色 (`#bf00ff`)。
* `Color 3`: 設為亮藍色/青色 (`#33ccff`)。


* **Aurora Motion (動感)**:
* `Speed Scale`: `0.05` - `0.1` (慢速流動)。
* `Flow Direction`: `(1.0, 0.3)` (向東北流動)。
* `Wave Intensity`: `0.3` - `0.5` (明顯的波動)。
* `Flicker Speed`: `0.5` (柔和的閃爍)。


* **Aurora Shape (形狀)**:
* `Spread`: `0.7`。
* `Intensity Master`: `2.0` - `3.0` (增加亮度)。



通過調整這些 Uniforms，您可以完全控制極光的顏色、形狀和流動的「動感」。
