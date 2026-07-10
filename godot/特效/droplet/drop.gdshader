shader_type canvas_item;

// 融合阈值：数值越低，水滴融合越明显，但边缘可能变模糊
uniform float threshold : hint_range(0.1, 1.0) = 0.5;
// 边缘硬度：控制水滴边缘的平滑/锐利度
uniform float softness : hint_range(0.0, 0.2) = 0.02;
// 折射强度：控制水滴对背景的扭曲程度
uniform float refraction_strength : hint_range(0.0, 0.1) = 0.03;
// 泡泡高光颜色
uniform vec4 highlight_color : source_color = vec4(1.0, 1.0, 1.0, 0.6);

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment() {
    // 1. 获取当前像素位置从所有水滴叠加而来的颜色和Alpha值
    // 注意：这个Shader所在的节点下方需要放置水滴节点（作为子节点或者通过BackBufferCopy）
    vec4 texture_color = texture(TEXTURE, UV);
    float alpha = texture_color.a;
    
    // 2. 使用 smoothstep 进行平滑截断，实现 Metaball 融合边缘
    float mask = smoothstep(threshold, threshold + softness, alpha);
    
    // 如果没有达到水滴的显示阈值，则直接丢弃或保持透明
    if (mask < 0.01) {
        discard;
    }
    
    // 3. 计算折射效果（利用叠加颜色的梯度来模拟水滴表面的法线扭曲）
    // 这里简单地利用 texture_color 的红色/绿色通道或alpha变化来做 UV 偏移
    vec2 refraction_offset = (texture_color.rg - 0.5) * refraction_strength * mask;
    vec2 refracted_uv = SCREEN_UV + refraction_offset;
    vec4 background = texture(SCREEN_TEXTURE, refracted_uv);
    
    // 4. 模拟水滴表面的高光与反光效果
    // 越接近水滴边缘（mask刚过阈值的地方），或根据叠加颜色的高光区进行提亮
    float highlight = smoothstep(threshold + softness, threshold + softness + 0.1, alpha);
    vec4 final_color = mix(background, highlight_color, (1.0 - highlight) * 0.3);
    
    // 给整体水滴加一点点绿色的环境折射滤镜（契合视频中的森林色调）
    final_color.rgb = mix(final_color.rgb, vec3(0.4, 0.5, 0.3), 0.1);
    
    COLOR = vec4(final_color.rgb, mask);
}