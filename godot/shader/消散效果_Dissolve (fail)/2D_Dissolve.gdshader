shader_type canvas_item;

// 基础纹理（Godot 2D 会自动传入，这里保留作为习惯）
uniform sampler2D noise_texture : filter_nearest, repeat_enable;

// 控制消散进度的核心参数：0.0 = 完整显现, 1.0 = 完全消散
uniform float dissolve_value : hint_range(0.0, 1.0) = 0.0;

// 边缘燃烧的颜色和宽度
uniform vec4 burn_color : source_color = vec4(1.0, 0.5, 0.0, 1.0);
uniform float burn_size : hint_range(0.0, 0.2) = 0.05;

void fragment() {
    // 获取原本的贴图颜色
    vec4 main_texture = texture(TEXTURE, UV);
    
    // 获取噪声图的灰度值（采样红色通道）
    float noise = texture(noise_texture, UV).r;

    // 当噪声值小于当前消散阈值时，直接丢弃该像素
    if (noise < dissolve_value) {
        discard;
    }

    // 计算边缘燃烧区域
    if (noise < dissolve_value + burn_size) {
        // 混合原本颜色和燃烧颜色，让边缘呈现火焰过渡
        main_texture.rgb = mix(main_texture.rgb, burn_color.rgb, 1.0);
    }

    COLOR = main_texture;
}