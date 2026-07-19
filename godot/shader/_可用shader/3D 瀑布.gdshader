/*著色器參數設定：
QuadMesh 
Noise Tex 1 & 2：在 Inspector 中，點擊這兩個欄位並選擇 新建 FastNoiseLite。

建議將 Noise 的 Frequency（頻率）調整為 0.02 左右。

勾選 Seamless（無縫），否則滾動時會看到明顯的接縫。

Scroll Speed：控制水流速度。Y 軸設為負數（例如 -0.6 和 -0.8）會讓水往下流。

Water Color：調整你想要的水體顏色（建議帶有一點透明度，即 Alpha 設為 0.8 左右）。*/

shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_lambert, specular_schlick_ggx;

uniform vec4 water_color : source_color = vec4(0.0, 0.4, 0.8, 0.8);
uniform vec4 foam_color : source_color = vec4(0.9, 0.9, 1.0, 0.9);

uniform sampler2D noise_tex1 : filter_linear_mipmap, repeat_enable;
uniform sampler2D noise_tex2 : filter_linear_mipmap, repeat_enable;

uniform vec2 scroll_speed1 = vec2(0.0, -0.6);
uniform vec2 scroll_speed2 = vec2(0.0, -0.8);

uniform float foam_threshold : hint_range(0.0, 1.0) = 0.5;
uniform float roughness : hint_range(0.0, 1.0) = 0.1;

void fragment() {
    // 讓 UV 隨著時間滾動
    vec2 uv1 = UV + scroll_speed1 * TIME;
    vec2 uv2 = UV + scroll_speed2 * TIME;
    
    // 讀取兩張雜訊圖
    float n1 = texture(noise_tex1, uv1).r;
    float n2 = texture(noise_tex2, uv2).r;
    
    // 混合雜訊產生有機的流動感
    float combined_noise = (n1 + n2) * 0.5;
    
    // 根據混合雜訊與 UV Y 軸產生泡沫效果（頂部和底部泡沫較多）
    float foam_mask = step(foam_threshold, combined_noise);
    
    // 混合水色與泡沫色
    vec3 final_color = mix(water_color.rgb, foam_color.rgb, foam_mask);
    float final_alpha = mix(water_color.a, foam_color.a, foam_mask);
    
    ALBEDO = final_color;
    ALPHA = final_alpha;
    ROUGHNESS = roughness;
    SPECULAR = 0.5;
}
