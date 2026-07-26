// =================================================================
// Godot 4.x 高階動態卡通天空 Shader (Toon Sky & Cloud Shader)
// 特色：
// 1. 卡通硬邊雲霧 (Toon/Stylized Clouds) 與層次陰影
// 2. 支持時間自動旋轉 OR 手動指定太陽/月亮方位角與仰角
// 3. 支持天氣參數覆蓋 (晴天、多雲、陰天、暴風雨)
// =================================================================
shader_type sky;

group_uniforms Celestial_Time;
// 【核心時間】 0.0 ~ 24.0 小時
uniform float time_of_day : hint_range(0.0, 24.0, 0.05) = 12.0;
// 軌道傾角 (-45° ~ 45°)
uniform float orbit_inclination : hint_range(-45.0, 45.0) = 15.0;

group_uniforms Custom_Position;
// 開啟手動天體位置控制 (勾選後忽略 time_of_day 自動軌道)
uniform bool use_custom_celestial_pos = false;
uniform float custom_sun_azimuth : hint_range(0.0, 360.0) = 45.0;
uniform float custom_sun_elevation : hint_range(-90.0, 90.0) = 45.0;
uniform float custom_moon_azimuth : hint_range(0.0, 360.0) = 225.0;
uniform float custom_moon_elevation : hint_range(-90.0, 90.0) = -45.0;

group_uniforms Sun_Moon_Appearance;
uniform float sun_size : hint_range(0.005, 0.1) = 0.035;
uniform float sun_blur : hint_range(0.001, 0.2) = 0.02; // 卡通風小 blur
uniform float moon_size : hint_range(0.005, 0.1) = 0.025;
uniform float moon_blur : hint_range(0.001, 0.2) = 0.01;

group_uniforms SkyColors;
uniform vec3 day_top_color : source_color = vec3(0.22, 0.52, 0.92);
uniform vec3 day_horizon_color : source_color = vec3(0.68, 0.86, 0.98);

uniform vec3 sunset_top_color : source_color = vec3(0.25, 0.15, 0.42);
uniform vec3 sunset_horizon_color : source_color = vec3(0.98, 0.42, 0.15);

uniform vec3 night_top_color : source_color = vec3(0.02, 0.04, 0.10);
uniform vec3 night_horizon_color : source_color = vec3(0.08, 0.12, 0.25);

group_uniforms Toon_Clouds;
uniform float cloud_coverage : hint_range(0.0, 1.0) = 0.45;
uniform float cloud_scale : hint_range(0.5, 10.0) = 2.5;
uniform float cloud_speed : hint_range(0.0, 0.2) = 0.02;
uniform float cloud_toon_step : hint_range(0.001, 0.2) = 0.05; // 控制卡通硬邊程度
uniform vec3 cloud_color_day : source_color = vec3(1.0, 1.0, 1.0);
uniform vec3 cloud_shadow_day : source_color = vec3(0.72, 0.80, 0.92);
uniform vec3 cloud_color_sunset : source_color = vec3(1.0, 0.75, 0.65);
uniform vec3 cloud_shadow_sunset : source_color = vec3(0.58, 0.32, 0.38);
uniform vec3 cloud_color_night : source_color = vec3(0.20, 0.25, 0.38);

group_uniforms WeatherSystem;
// 天氣黑暗度遮罩 (暴風雨或陰天時調高)
uniform float weather_darkness : hint_range(0.0, 1.0) = 0.0;
uniform vec3 stormy_sky_tint : source_color = vec3(0.12, 0.15, 0.20);

group_uniforms Stars;
uniform float stars_intensity : hint_range(0.0, 3.0) = 1.2;
uniform float stars_twinkle_speed : hint_range(0.0, 10.0) = 2.5;

// 偽隨機與 2D 雜訊 (用於生成卡通雲與星星)
float hash(vec2 p) {
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(mix(hash(i + vec2(0.0, 0.0)), hash(i + vec2(1.0, 0.0)), u.x),
               mix(hash(i + vec2(0.0, 1.0)), hash(i + vec2(1.0, 1.0)), u.x), u.y);
}

float fbm(vec2 p) {
    float v = 0.0;
    float a = 0.5;
    mat2 rot = mat2(vec2(0.8, 0.6), vec2(-0.6, 0.8));
    for (int i = 0; i < 3; ++i) {
        v += a * noise(p);
        p = rot * p * 2.0;
        a *= 0.5;
    }
    return v;
}

void sky() {
    vec3 view_dir = EYEDIR;
    float view_y = view_dir.y;

    // 1. 計算太陽與月亮方向
    vec3 sun_dir;
    vec3 moon_dir;

    if (use_custom_celestial_pos) {
        float sun_az_rad = radians(custom_sun_azimuth);
        float sun_el_rad = radians(custom_sun_elevation);
        sun_dir = normalize(vec3(
            cos(sun_el_rad) * sin(sun_az_rad),
            sin(sun_el_rad),
            cos(sun_el_rad) * cos(sun_az_rad)
        ));

        float moon_az_rad = radians(custom_moon_azimuth);
        float moon_el_rad = radians(custom_moon_elevation);
        moon_dir = normalize(vec3(
            cos(moon_el_rad) * sin(moon_az_rad),
            sin(moon_el_rad),
            cos(moon_el_rad) * cos(moon_az_rad)
        ));
    } else {
        float time_rad = ((time_of_day - 6.0) / 24.0) * 6.2831853;
        float inc_rad = radians(orbit_inclination);
        sun_dir = normalize(vec3(-cos(time_rad), sin(time_rad), sin(time_rad) * tan(inc_rad)));
        moon_dir = -sun_dir;
    }

    // 2. 時間權重算繪
    float sun_y = sun_dir.y;
    float sunset_factor = clamp(1.0 - abs(sun_y - 0.02) / 0.3, 0.0, 1.0);
    sunset_factor = pow(sunset_factor, 1.5);

    float day_factor = smoothstep(-0.12, 0.20, sun_y);
    float night_factor = 1.0 - day_factor;

    // 3. 基礎天空顏色的混合
    float horizon_mask = pow(clamp(1.0 - max(view_y, 0.0), 0.0, 1.0), 3.0);
    vec3 day_sky = mix(day_top_color, day_horizon_color, horizon_mask);
    vec3 sunset_sky = mix(sunset_top_color, sunset_horizon_color, horizon_mask);
    vec3 night_sky = mix(night_top_color, night_horizon_color, horizon_mask);

    // 夕陽金橘散射光暈
    float sun_horizon_glow = max(dot(view_dir, vec3(sun_dir.x, 0.0, sun_dir.z)), 0.0);
    sunset_sky += vec3(1.0, 0.4, 0.1) * pow(sun_horizon_glow, 4.0) * sunset_factor * 1.5;

    vec3 final_sky = mix(night_sky, day_sky, day_factor);
    final_sky = mix(final_sky, sunset_sky, sunset_factor * (1.0 - day_factor * 0.4));

    // 套用天氣黑暗度 (Storm/Overcast Tint)
    final_sky = mix(final_sky, stormy_sky_tint, weather_darkness);

    // 4. 星空算繪
    if (night_factor > 0.05 && view_y > 0.0) {
        vec2 star_uv = view_dir.xz / (view_y + 0.7) * 120.0;
        float star_noise = hash(floor(star_uv));
        if (star_noise > 0.982) {
            float twinkle = sin(TIME * stars_twinkle_speed + star_noise * 100.0) * 0.5 + 0.5;
            float star_brightness = (star_noise - 0.982) / 0.018 * twinkle;
            final_sky += vec3(star_brightness) * night_factor * stars_intensity * smoothstep(0.0, 0.2, view_y) * (1.0 - weather_darkness);
        }
    }

    // 5. 太陽與月亮 (Toon Style 邊緣)
    float sun_dot = max(dot(view_dir, sun_dir), 0.0);
    float sun_disc = smoothstep(1.0 - sun_size, 1.0 - sun_size + sun_blur, sun_dot);
    vec3 sun_color = mix(vec3(1.0, 0.35, 0.1), vec3(1.0, 0.96, 0.85), clamp(sun_y * 2.5, 0.0, 1.0));
    final_sky += sun_disc * sun_color * 4.0 * clamp(sun_y + 0.2, 0.0, 1.0) * (1.0 - weather_darkness * 0.8);

    float moon_dot = max(dot(view_dir, moon_dir), 0.0);
    float moon_disc = smoothstep(1.0 - moon_size, 1.0 - moon_size + moon_blur, moon_dot);
    final_sky += moon_disc * vec3(0.85, 0.92, 1.0) * 2.0 * night_factor * (1.0 - weather_darkness * 0.8);

    // 6. 【卡通雲霧算繪 (Toon Clouds)】
    if (view_y > 0.02 && cloud_coverage > 0.01) {
        vec2 cloud_uv = view_dir.xz / (view_y + 0.15) * cloud_scale;
        cloud_uv += vec2(TIME * cloud_speed, TIME * cloud_speed * 0.4);

        float n = fbm(cloud_uv);
        
        // 使用 smoothstep 與 cloud_toon_step 切出卡通硬階梯效果
        float cloud_threshold = 1.0 - cloud_coverage;
        float cloud_alpha = smoothstep(cloud_threshold, cloud_threshold + cloud_toon_step, n);

        // 卡通光影階梯 (Toon Lighting Step)
        float light_dir_dot = max(dot(sun_dir, vec3(0.0, 1.0, 0.0)), 0.0);
        float toon_light = smoothstep(0.4, 0.45, n);

        // 雲色彩插值 (白天 / 夕陽 / 夜晚)
        vec3 cur_cloud_main = mix(cloud_color_night, cloud_color_day, day_factor);
        cur_cloud_main = mix(cur_cloud_main, cloud_color_sunset, sunset_factor);

        vec3 cur_cloud_shadow = mix(cloud_color_night * 0.6, cloud_shadow_day, day_factor);
        cur_cloud_shadow = mix(cur_cloud_shadow, cloud_shadow_sunset, sunset_factor);

        // 暴風雨天氣時雲朵加深
        cur_cloud_main = mix(cur_cloud_main, vec3(0.15), weather_darkness);
        cur_cloud_shadow = mix(cur_cloud_shadow, vec3(0.08), weather_darkness);

        vec3 toon_cloud_color = mix(cur_cloud_shadow, cur_cloud_main, toon_light);

        // 地平線消融遮罩
        cloud_alpha *= smoothstep(0.02, 0.25, view_y);

        // 混合天空與卡通雲
        final_sky = mix(final_sky, toon_cloud_color, cloud_alpha);
    }

    COLOR = final_sky;
}