//=========================================================
//Godot 3D Shader 消散特效
// Godot 4.x Spatial Shader: Classic Noise Dissolve (噪声消散)
// 基于 2D Perlin 伪噪声的传统燃烧或风化消融外观
//=========================================================
shader_type spatial;
render_mode depth_draw_always, cull_disabled;

uniform sampler2D albedo_tex : source_color;
uniform float dissolve_amount : hint_range(0.0, 1.0) = 0.40;
uniform float noise_scale : hint_range(1.0, 100.0) = 32.0;

// 发光设置
uniform float edge_width : hint_range(0.0, 0.3) = 0.05;
uniform vec4 edge_color : source_color = vec4(1.0, 0.33, 0.0, 1.0);
uniform float emission_intensity : hint_range(0.0, 10.0) = 4.0;

// 二维噪点生成
float hash(vec2 p) {
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(mix(hash(i + vec2(0.0,0.0)), hash(i + vec2(1.0,0.0)), u.x),
               mix(hash(i + vec2(0.0,1.0)), hash(i + vec2(1.0,1.0)), u.x), u.y);
}

void fragment() {
    // 1. 生成自然起伏的噪点值
    float noise_val = noise(UV * noise_scale);
    
    // 2. 消散与裁切计算
    float threshold = dissolve_amount * (1.0 + edge_width);
    if (noise_val < threshold - edge_width) {
        discard;
    }
    
    // 3. 基础色彩采样
    vec4 tex = texture(albedo_tex, UV);
    ALBEDO = tex.rgb;
    METALLIC = 0.15;
    ROUGHNESS = 0.6;
    
    // 4. 熔岩般的渐变边缘
    if (noise_val < threshold) {
        float edge_factor = (threshold - noise_val) / edge_width;
        vec3 glow = edge_color.rgb * emission_intensity;
        ALBEDO = mix(ALBEDO, edge_color.rgb, edge_factor);
        EMISSION = mix(vec3(0.0), glow, edge_factor);
    }
}