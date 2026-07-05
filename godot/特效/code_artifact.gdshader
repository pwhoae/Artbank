shader_type canvas_item;

// 宣告讀取螢幕紋理，用於玻璃的折射與模糊效果
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

// 控制參數
uniform float blur_amount : hint_range(0.0, 5.0) = 2.5;         // 背景模糊程度
uniform float refraction_strength : hint_range(0.0, 0.2) = 0.05; // 折射強度
uniform vec4 glass_tint : source_color = vec4(1.0, 1.0, 1.0, 0.15); // 玻璃微弱底色
uniform vec4 rim_color : source_color = vec4(1.0, 1.0, 1.0, 0.6);   // 邊緣高光顏色
uniform float rim_thickness : hint_range(0.0, 0.1) = 0.015;      // 邊緣高光粗細
uniform float threshold : hint_range(0.0, 1.0) = 0.45;           // 液體融合硬度閥值
uniform float softness : hint_range(0.0, 0.5) = 0.02;            // 液體邊緣平滑度

// 傳遞動態液態控制點的陣列 (最多支援8個點，由GDScript動態更新)
uniform vec2 points[8];
uniform float point_radii[8];
uniform int active_points_count = 0;

// 計算單個點的距離場 (Metaball 影響力)
float metaball(vec2 uv, vec2 center, float radius) {
    float d = distance(uv, center);
    // 使用經典的 Metaball 能量函數：1.0 / (d^2) 或平滑漸變
    if (d < radius) {
        float x = d / radius;
        // 5次多項式平滑插值，保證融合處平滑
        return 1.0 - x * x * x * (x * (x * 6.0 - 15.0) + 10.0);
    }
    return 0.0;
}

void fragment() {
    vec2 uv = UV;
    float influence = 0.0;
    
    // 1. 基礎面板區域（主體玻璃）
    // 假設主體是一個圓角矩形，我們可以直接用內建 UV 繪製，或者將主體也當作一個超大 Metaball
    // 這裡我們結合主體面板與動態小泡泡的能量
    float base_box = metaball(uv, vec2(0.5, 0.5), 0.45);
    influence += base_box;
    
    // 2. 累加動態點的能量
    for (int i = 0; i < active_points_count; i++) {
        influence += metaball(uv, points[i], point_radii[i]);
    }
    
    // 3. 透過閥值（Threshold）裁剪出液態邊緣，實現融接效果
    // influence 大於 threshold 的地方就是玻璃內部，小於的就是外部
    float glass_mask = smoothstep(threshold - softness, threshold + softness, influence);
    
    // 如果不在玻璃內部，則直接丟棄像素，保持背景透明
    if (glass_mask < 0.01) {
        discard;
    }
    
    // 4. 計算邊緣法線 (Normal Map)，用於折射與高光
    // 透過空間微差求導，計算出玻璃表面的傾斜度
    float eps = 0.01;
    float inf_x1 = base_box;
    for (int i = 0; i < active_points_count; i++) inf_x1 += metaball(uv + vec2(eps, 0.0), points[i], point_radii[i]);
    float inf_x2 = base_box;
    for (int i = 0; i < active_points_count; i++) inf_x2 += metaball(uv - vec2(eps, 0.0), points[i], point_radii[i]);
    float inf_y1 = base_box;
    for (int i = 0; i < active_points_count; i++) inf_y1 += metaball(uv + vec2(0.0, eps), points[i], point_radii[i]);
    float inf_y2 = base_box;
    for (int i = 0; i < active_points_count; i++) inf_y2 += metaball(uv - vec2(0.0, eps), points[i], point_radii[i]);
    
    vec2 normal = vec2(inf_x1 - inf_x2, inf_y1 - inf_y2);
    if (length(normal) > 0.0) {
        normal = normalize(normal);
    }
    
    // 5. 折射效果：偏移螢幕紋理的 UV 坐標
    vec2 refracted_uv = SCREEN_UV - normal * refraction_strength * glass_mask;
    
    // 6. 讀取背景並加上模糊 (簡單的 4-Tap 採樣模擬模糊)
    vec4 bg = textureLod(SCREEN_TEXTURE, refracted_uv, blur_amount);
    
    // 7. 玻璃色彩混合
    vec4 color = mix(bg, glass_tint, glass_tint.a);
    
    // 8. 邊緣高光 (Rim Light)：在遮罩邊緣（接近 threshold 的地方）疊加白色高光
    float edge = smoothstep(threshold + rim_thickness, threshold, influence) * glass_mask;
    vec4 final_rim = rim_color * edge;
    
    color.rgb += final_rim.rgb * rim_color.a;
    
    // 設定最終輸出顏色與透明度遮罩
    COLOR = vec4(color.rgb, glass_mask);
}