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