shader_type spatial;
render_mode blend_mix, depth_draw_always, cull_back, diffuse_burley, specular_schlick_ggx;

/* STREAMING_CHUNK: Defining uniforms for glass color, PBR parameters, and Fresnel controls... */
// ==========================================
// 玻璃基礎與 PBR 參數 (Glass & PBR Controls)
// ==========================================
uniform vec4 glass_color : source_color = vec4(0.85, 0.92, 0.98, 0.08);
uniform float base_roughness : hint_range(0.0, 1.0, 0.01) = 0.02;
uniform float metallic : hint_range(0.0, 1.0, 0.01) = 0.1;
uniform float fresnel_power : hint_range(0.5, 10.0, 0.1) = 3.5;
uniform float fresnel_tint : hint_range(0.0, 1.0, 0.05) = 0.6;

/* STREAMING_CHUNK: Defining uniforms for glass fog, condensation, and wetness wiping... */
// ==========================================
// 玻璃霧氣與起霧效果 (Condensation & Fog)
// ==========================================
uniform float fog_amount : hint_range(0.0, 1.0, 0.05) = 0.35;
uniform float fog_roughness : hint_range(0.0, 1.0, 0.05) = 0.65;

/* STREAMING_CHUNK: Defining uniforms for rain drops, speed, density, and distortion... */
// ==========================================
// 雨滴動態與形狀控制 (Rain Droplet Parameters)
// ==========================================
uniform float rain_speed : hint_range(0.0, 5.0, 0.1) = 1.2;
uniform float droplet_scale : hint_range(1.0, 30.0, 1.0) = 8.0;
uniform float static_drop_density : hint_range(0.0, 1.0, 0.05) = 0.6;
uniform float refraction_strength : hint_range(0.0, 0.2, 0.001) = 0.035;
uniform float chromatic_aberration : hint_range(0.0, 0.02, 0.0005) = 0.003;

/* STREAMING_CHUNK: Defining texture samplers for screen texture and procedural noise... */
// ==========================================
// 貼圖與螢幕採樣 (Textures & Screen Buffer)
// ==========================================
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;
uniform sampler2D noise_texture : hint_default_white, repeat_enable;

/* STREAMING_CHUNK: Implementing helper math functions for procedural noise and random generation... */
// ==========================================
// 雜訊與偽隨機數生成函數 (Noise & Random Helpers)
// ==========================================
vec2 hash21(vec2 p) {
vec3 p3 = fract(vec3(p.xyx) * vec3(0.1031, 0.1030, 0.0973));
p3 += dot(p3, p3.yzx + 33.33);
return fract((p3.xx + p3.yz) * p3.zy);
}

/* STREAMING_CHUNK: Calculating sliding rain drop normals, trail effects, and wet mask... */
// ==========================================
// 動態滑落雨滴計算函數 (Sliding Droplets SDF & Normals)
// ==========================================
vec4 calculate_sliding_droplets(vec2 uv, float time) {
vec2 grid_uv = uv * droplet_scale;

// 計算單元格 ID 與格內座標
vec2 grid_id = floor(grid_uv);
vec2 cell_uv = fract(grid_uv) - 0.5;

// 依單元格引入隨機偏移與時間錯開
vec2 rand = hash21(grid_id);
float time_offset = rand.x * 6.28318;
float current_time = time * rain_speed + time_offset;

// 主雨滴垂直滑落運動
float drop_y = fract(current_time);
vec2 drop_pos = vec2((rand.y - 0.5) * 0.6, drop_y - 0.5);

// 計算與主雨滴的距離
vec2 dist_vec = cell_uv - drop_pos;
dist_vec.x *= 1.5; // 水平方向稍微壓扁，更接近流體形狀
float drop_dist = length(dist_vec);

// 雨滴形狀掩膜 (Smoothstep 邊緣光滑)
float drop_size = mix(0.12, 0.22, rand.x);
float drop_mask = smoothstep(drop_size, drop_size - 0.05, drop_dist);

// 水滴水痕拖尾效果 (Trail)
float trail_mask = smoothstep(0.08, 0.0, abs(cell_uv.x - drop_pos.x)) * 
                   step(cell_uv.y, drop_pos.y) * 
                   smoothstep(-0.5, drop_pos.y, cell_uv.y);
                   
// 拖尾上的微小水滴點綴
float trail_dots = sin((cell_uv.y - drop_pos.y) * 25.0) * 0.5 + 0.5;
trail_mask *= step(0.6, trail_dots);

float total_mask = clamp(drop_mask + trail_mask * 0.5, 0.0, 1.0);

// 計算法線偏移
vec2 normal_offset = dist_vec * drop_mask * 8.0;

return vec4(normal_offset, total_mask, drop_mask);


}

/* STREAMING_CHUNK: Calculating static rain drop clusters and surface moisture... */
// ==========================================
// 靜態貼附雨滴計算函數 (Static Water Droplets)
// ==========================================
vec3 calculate_static_droplets(vec2 uv) {
vec2 st = uv * (droplet_scale * 1.8);
vec2 id = floor(st);
vec2 pos = fract(st) - 0.5;

vec2 rand = hash21(id);
if (rand.x > static_drop_density) {
    return vec3(0.0);
}

vec2 drop_center = (rand - 0.5) * 0.7;
vec2 d = pos - drop_center;
float dist = length(d);

float radius = mix(0.1, 0.25, rand.y);
float mask = smoothstep(radius, radius - 0.04, dist);

vec2 norm = normalize(d + 0.0001) * mask * (1.0 - dist / radius);
return vec3(norm, mask);


}

/* STREAMING_CHUNK: Calculating view-dependent Fresnel factor... */
// ==========================================
// 菲涅爾反射計算 (Fresnel Factor)
// ==========================================
float calculate_fresnel(float power, vec3 normal, vec3 view_dir) {
return pow(1.0 - clamp(dot(normalize(normal), normalize(view_dir)), 0.0, 1.0), power);
}

/* STREAMING_CHUNK: Executing fragment shader logic for rain drops, fog, refraction, and lighting... */
void fragment() {
// 1. 計算動態滑落雨滴與靜態附著雨滴
vec4 sliding_rain = calculate_sliding_droplets(UV, TIME);
vec3 static_rain = calculate_static_droplets(UV);

// 2. 混合法線干擾與濕潤區域掩膜 (Normal Disturbance & Wet Mask)
vec2 rain_normal_offset = sliding_rain.xy + static_rain.xy * 0.6;
float total_wet_mask = clamp(sliding_rain.z + static_rain.z, 0.0, 1.0);

// 動態合成 NORMAL_MAP 法線貼圖
NORMAL_MAP = vec3(rain_normal_offset * 0.5 + 0.5, 1.0);
NORMAL_MAP_DEPTH = 1.0;

// 3. 玻璃起霧與濕潤區域抹除效果 (Fog & Clearing Mask)
float noise_val = texture(noise_texture, UV * 3.0).r;
float fog_mask = clamp(fog_amount * (0.6 + noise_val * 0.4) - total_wet_mask * 0.8, 0.0, 1.0);

// 4. 背景螢幕折射與色差效果 (Refraction & Chromatic Aberration)
vec2 distortion = rain_normal_offset * refraction_strength;

// RGB 三色通道分離 (Chromatic Aberration)
vec2 uv_r = SCREEN_UV + distortion * (1.0 + chromatic_aberration * 10.0);
vec2 uv_g = SCREEN_UV + distortion;
vec2 uv_b = SCREEN_UV + distortion * (1.0 - chromatic_aberration * 10.0);

float ref_r = texture(screen_texture, uv_r).r;
float ref_g = texture(screen_texture, uv_g).g;
float ref_b = texture(screen_texture, uv_b).b;
vec3 refracted_color = vec3(ref_r, ref_g, ref_b);

// 若玻璃起霧，背景折射顏色微加柔和散射
vec3 fog_color = mix(refracted_color, vec3(0.9, 0.92, 0.95), fog_mask * 0.3);

/* STREAMING_CHUNK: Combining material PBR parameters, emission, and alpha output... */
// 5. Blending Albedo 色彩
ALBEDO = mix(fog_color, glass_color.rgb, glass_color.a);

// 6. PBR 材質動態調節 (粗糙度 Roughness & 金屬度 Metallic)
// 起霧區域粗糙度變高，水滴經過處粗糙度極低 (趨近於 0，呈現極佳高光)
ROUGHNESS = mix(base_roughness, fog_roughness, fog_mask);
ROUGHNESS = mix(ROUGHNESS, 0.005, total_wet_mask);

METALLIC = metallic;

// 7. 菲涅爾邊緣反射 (Fresnel Lighting)
float fresnel = calculate_fresnel(fresnel_power, NORMAL, VIEW);

// 8. 透明度 Alpha 與自發光 Emission 輸出
ALPHA = clamp(glass_color.a + fresnel * fresnel_tint + fog_mask * 0.35 + total_wet_mask * 0.15, 0.0, 1.0);
EMISSION = mix(glass_color.rgb, vec3(1.0), 0.5) * fresnel * 0.2;


}