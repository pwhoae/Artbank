shader_type spatial;
// depth_draw_always 确保半透明/裁剪深度正确，cull_disabled 允许双面渲染
render_mode depth_draw_always, cull_disabled;

uniform sampler2D albedo_texture : source_color, filter_linear_mipmap;
uniform sampler2D noise_texture : filter_linear_mipmap, repeat_enable;

// 控制消散进度的核心参数：0.0 = 完整, 1.0 = 消失
uniform float dissolve_value : hint_range(0.0, 1.0) = 0.0;

// 3D 特有的燃烧发光设置
uniform vec4 burn_color : source_color = vec4(1.0, 0.3, 0.0, 1.0);
uniform float burn_size : hint_range(0.0, 0.2) = 0.05;
uniform float emission_strength : hint_range(0.0, 10.0) = 3.0; // 发光强度

void fragment() {
    // 采样主贴图
    vec4 albedo_tex = texture(albedo_texture, UV);
    ALBEDO = albedo_tex.rgb;
    ALPHA = albedo_tex.a;

    // 采样噪声图
    float noise = texture(noise_texture, UV).r;

    // 裁剪像素
    if (noise < dissolve_value) {
        discard;
    }

    // 计算发光边缘
    if (noise < dissolve_value + burn_size) {
        // 将边缘强制设为燃烧颜色，并赋予自发光
        ALBEDO = burn_color.rgb;
        EMISSION = burn_color.rgb * emission_strength;
    }
}