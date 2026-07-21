shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_disabled;

uniform vec4 base_color : source_color = vec4(0.4, 0.5, 0.6, 0.7);
uniform float speed = 3.0;          // 旋轉速度
uniform float twist_amount = 2.0;   // 扭曲程度
uniform float funnel_spread = 1.5;  // 頂部張開幅度
uniform float height_scale = 6.0;   // 對應網格的實際高度
uniform sampler2D noise_tex;        // 用於產生風暴紋理的噪點圖

void vertex() {
    // 1. 將頂點 Y 座標從網格局部空間轉換為 0 到 1 的漸變 (0 = 底部, 1 = 頂部)
    float normalized_height = (VERTEX.y + (height_scale / 2.0)) / height_scale;
    
    // 2. 旋轉（扭曲）效果：高度越高，旋轉角度越大
    float angle = (normalized_height * twist_amount) - (TIME * speed);
    float s = sin(angle);
    float c = cos(angle);
    mat2 rot_mat = mat2(vec2(c, -s), vec2(s, c));
    VERTEX.xz = rot_mat * VERTEX.xz;
    
    // 3. 漏斗形狀（下窄上寬）：底部收縮為 0.1，頂部擴大
    float width_factor = mix(0.1, funnel_spread, normalized_height);
    VERTEX.xz *= width_factor;
}

void fragment() {
    // 利用 UV 動態偏移來模擬風暴向上的流動感
    vec2 moving_uv = vec2(UV.x - TIME * 0.1, UV.y - TIME * 0.5);
    vec4 noise_color = texture(noise_tex, moving_uv);
    
    // 結合基礎顏色與噪點
    ALBEDO = base_color.rgb + noise_color.rgb * 0.2;
    
    // 邊緣淡出（可選，讓龍捲風半透明邊緣更柔和）
    float edge_fade = sin(UV.y * 3.14159); // 頂部與底部淡出
    ALPHA = base_color.a * noise_color.r * edge_fade;
}
