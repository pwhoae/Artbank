shader_type spatial;
// 關閉 3D 默認光照（使用自定義發光），雙面渲染，混合模式為半透明
render_mode unshaded, cull_disabled, blend_mix;

// 顏色控制
uniform vec4 core_color : source_color = vec4(0.4, 0.1, 0.8, 1.0);  // 深紫核心
uniform vec4 edge_color : source_color = vec4(0.2, 0.9, 1.0, 1.0);  // 霓虹青色
uniform vec4 inner_glow : source_color = vec4(0.9, 0.15, 0.7, 1.0); // 內部粉色

// 噪點圖設定
uniform sampler2D noise_tex : repeat_enable;
uniform float portal_scale : hint_range(0.1, 2.0) = 0.95;

// 液體形狀控制
uniform float threshold : hint_range(0.1, 0.9) = 0.42;
uniform float softness : hint_range(0.01, 0.2) = 0.04;
uniform float border_width : hint_range(0.01, 0.15) = 0.05;

// 噪點滾動速度（模擬液體蠕動）
uniform vec2 speed1 = vec2(0.06, 0.04);
uniform vec2 speed2 = vec2(-0.04, 0.08);

// 數位網格
uniform float grid_scale = 180.0;
uniform float grid_intensity : hint_range(0.0, 1.0) = 0.4;

// 3D 深度淡入淡出（避免與 3D 牆面產生難看的剪裁硬邊）
uniform float proximity_fade_distance : hint_range(0.0, 2.0) = 0.3;
uniform sampler2D depth_texture : hint_depth_texture, filter_linear_mipmap;

void fragment() {
    // --- 1. 基礎圓形遮罩 (SDF) ---
    vec2 uv_centered = UV - vec2(0.5);
    float dist = length(uv_centered) * 2.0 / portal_scale;
    // 圓形遮罩：越往外越暗，超出邊界變為 0
    float circle_mask = 1.0 - smoothstep(0.4, 1.0, dist);

    // --- 2. 雙重噪點混合 (模擬液體黏滯與蠕動) ---
    vec2 n_uv1 = UV + TIME * speed1;
    vec2 n_uv2 = UV + TIME * speed2;
    float noise1 = texture(noise_tex, n_uv1).r;
    float noise2 = texture(noise_tex, n_uv2).r;
    
    // 將兩個噪點相乘/相加，並乘以圓形遮罩
    float combined = circle_mask * (noise1 + noise2) * 0.55;

    // --- 3. 閾值截斷 (液體融合) ---
    float core_mask = smoothstep(threshold, threshold + softness, combined);
    
    // 內部粉色輝光
    float inner_mask = smoothstep(threshold, threshold + 0.12, combined) * (1.0 - core_mask);
    
    // 霓虹藍邊框
    float border_outer = threshold - border_width;
    float border_mask = smoothstep(border_outer, border_outer + softness, combined) * (1.0 - core_mask);

    // --- 4. 數位網格 (極具潮流感) ---
    vec2 grid_uv = fract(UV * grid_scale);
    float grid_pattern = step(0.18, grid_uv.x) * step(0.18, grid_uv.y);
    float grid_area = smoothstep(border_outer - 0.06, threshold, combined) * (1.0 - core_mask);
    vec4 final_grid = vec4(edge_color.rgb * 1.5, grid_area * (1.0 - grid_pattern) * grid_intensity);

    // --- 5. 組合圖層色彩與 HDR 爆光強度 ---
    vec4 final_color = vec4(0.0);
    vec4 core_col = vec4(core_color.rgb, core_mask);
    vec4 inner_col = vec4(inner_glow.rgb * 1.8, inner_mask * 0.9); // 乘 1.8 觸發 Bloom 輝光
    vec4 border_col = vec4(edge_color.rgb * 3.5, border_mask);     // 乘 3.5 產生刺眼霓虹高亮

    final_color = mix(final_color, final_grid, final_grid.a);
    final_color = mix(final_color, border_col, border_col.a);
    final_color = mix(final_color, inner_col, inner_col.a);
    final_color = mix(final_color, core_col, core_col.a);

    // --- 6. 3D 深度融合 (Proximity Fade) ---
    float depth = textureLod(depth_texture, SCREEN_UV, 0.0).r;
    vec3 ndc = vec3(SCREEN_UV * 2.0 - 1.0, depth);
    vec4 view = INV_PROJECTION_MATRIX * vec4(ndc, 1.0);
    view.xyz /= view.w;
    float linear_depth = -view.z;
    float fade = clamp((linear_depth - (-VERTEX.z)) / proximity_fade_distance, 0.0, 1.0);

    // 輸出到 Godot 3D 渲染器
    ALBEDO = final_color.rgb;
    ALPHA = final_color.a * fade; // 同時受融合 Alpha 與深度淡出影響
}
