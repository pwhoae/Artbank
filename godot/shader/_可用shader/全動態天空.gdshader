// =================================================================
// Godot 4.x 動態 3D 天空 Shader (Dynamic Sky Shader)
// 支援 0.0 ~ 24.0 全天候時間參數自動切換：日出 / 正午 / 夕陽 / 晚霞 / 夜晚
// =================================================================
shader_type sky;

// 【核心參數】時間（0.0 ~ 24.0 小時，例如 6.5 代表早上 6:30，18.0 代表下午 6:00）
uniform float time_of_day : hint_range(0.0, 24.0, 0.05) = 12.0;

// 天體配置
uniform float sun_size : hint_range(0.005, 0.1) = 0.035;
uniform float sun_blur : hint_range(0.01, 0.5) = 0.08;
uniform float moon_size : hint_range(0.005, 0.1) = 0.025;
uniform float moon_blur : hint_range(0.01, 0.5) = 0.03;

// 色彩調色盤（也可保持預設）
group_uniforms SkyColors;
uniform vec3 day_top_color : source_color = vec3(0.22, 0.48, 0.88);
uniform vec3 day_horizon_color : source_color = vec3(0.68, 0.85, 0.96);

uniform vec3 sunset_top_color : source_color = vec3(0.18, 0.12, 0.35);
uniform vec3 sunset_horizon_color : source_color = vec3(0.98, 0.38, 0.12);

uniform vec3 night_top_color : source_color = vec3(0.02, 0.03, 0.08);
uniform vec3 night_horizon_color : source_color = vec3(0.06, 0.10, 0.22);

group_uniforms Stars;
uniform float stars_intensity : hint_range(0.0, 3.0) = 1.2;
uniform float stars_twinkle_speed : hint_range(0.0, 10.0) = 2.5;

// 偽隨機數生成算法 (用於生成星空)
float hash(vec2 p) {
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}

void sky() {
    // 1. 將 time_of_day (0-24) 轉換為弧度角 (6:00 時太陽在東方地平線上升起)
    float time_rad = ((time_of_day - 6.0) / 24.0) * 6.2831853;
    
    // 計算太陽與月亮的三維方向向量 (傾斜角 15 度讓軌道更自然)
    vec3 sun_dir = normalize(vec3(-cos(time_rad), sin(time_rad), sin(time_rad) * 0.25));
    vec3 moon_dir = -sun_dir;

    vec3 view_dir = EYEDIR; // 當前觀察像素的方向向量
    float view_y = view_dir.y; // 高度角 (-1.0 到 1.0)

    // 2. 太陽高度計算 (-1.0 到 1.0)
    float sun_y = sun_dir.y;

    // 計算日出/日落 (Sunset/Sunrise) 權重 (當太陽接近地平線 -0.2 ~ 0.25 時達到峰值)
    float sunset_factor = clamp(1.0 - abs(sun_y - 0.02) / 0.3, 0.0, 1.0);
    sunset_factor = pow(sunset_factor, 1.5);

    // 白天權重 (太陽升起時)
    float day_factor = smoothstep(-0.15, 0.25, sun_y);

    // 黑夜權重
    float night_factor = 1.0 - day_factor;

    // 3. 地平線漸變遮罩 (地平線處值接近 1，天頂接近 0)
    float horizon_mask = pow(clamp(1.0 - max(view_y, 0.0), 0.0, 1.0), 3.0);

    // 混合三個時段的天空顏色 (白天 / 夕陽 / 黑夜)
    vec3 day_sky = mix(day_top_color, day_horizon_color, horizon_mask);
    vec3 sunset_sky = mix(sunset_top_color, sunset_horizon_color, horizon_mask);
    vec3 night_sky = mix(night_top_color, night_horizon_color, horizon_mask);

    // 朝向太陽方向的地平線加入金橘色散射光暈
    float sun_horizon_glow = max(dot(view_dir, vec3(sun_dir.x, 0.0, sun_dir.z)), 0.0);
    sunset_sky += vec3(1.0, 0.45, 0.1) * pow(sun_horizon_glow, 4.0) * sunset_factor * 1.5;

    // 最終基礎天空顏色插值
    vec3 final_sky = mix(night_sky, day_sky, day_factor);
    final_sky = mix(final_sky, sunset_sky, sunset_factor * (1.0 - day_factor * 0.4));

    // 4. 星空算繪 (僅在夜間且高度在地平線以上顯示)
    if (night_factor > 0.05 && view_y > -0.05) {
        vec2 star_uv = view_dir.xz / (view_y + 0.8) * 120.0;
        float star_noise = hash(floor(star_uv));
        
        if (star_noise > 0.982) { // 控制星星密度
            float twinkle = sin(TIME * stars_twinkle_speed + star_noise * 100.0) * 0.5 + 0.5;
            float star_brightness = (star_noise - 0.982) / 0.018 * twinkle;
            final_sky += vec3(star_brightness) * night_factor * stars_intensity * smoothstep(-0.05, 0.15, view_y);
        }
    }

    // 5. 太陽繪製
    float sun_dot = max(dot(view_dir, sun_dir), 0.0);
    float sun_disc = smoothstep(1.0 - sun_size, 1.0 - sun_size + sun_blur, sun_dot);
    float sun_halo = pow(sun_dot, 6.0) * 0.5 + pow(sun_dot, 2.0) * 0.15;
    
    // 太陽顏色隨高度改變 (低角度偏紅橘，高角度偏黃白)
    vec3 sun_color = mix(vec3(1.0, 0.35, 0.08), vec3(1.0, 0.96, 0.85), clamp(sun_y * 2.5, 0.0, 1.0));
    final_sky += (sun_disc * 5.0 + sun_halo) * sun_color * clamp(sun_y + 0.2, 0.0, 1.0);

    // 6. 月亮繪製
    float moon_dot = max(dot(view_dir, moon_dir), 0.0);
    float moon_disc = smoothstep(1.0 - moon_size, 1.0 - moon_size + moon_blur, moon_dot);
    float moon_halo = pow(moon_dot, 10.0) * 0.3;
    final_sky += (moon_disc * 1.8 + moon_halo) * vec3(0.85, 0.9, 1.0) * night_factor;

    COLOR = final_sky;
}