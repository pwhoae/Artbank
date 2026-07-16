shader_type canvas_item;

// --- 属性参数 ---
uniform float progress : hint_range(0.0, 1.0) = 0.0;     // 消融进度 (0: 完全显示, 1: 完全消失)
uniform float block_size : hint_range(1.0, 32.0) = 4.0;  // 像素颗粒的大小
uniform vec4 edge_color : source_color = vec4(0.0, 0.7, 1.0, 1.0); // 边缘高光颜色
uniform float edge_width : hint_range(0.0, 0.5) = 0.08;   // 高光边缘的宽度

// --- 伪随机数生成函数 (基于输入坐标返回 0~1 的随机值) ---
float random(vec2 uv) {
    return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 438.5453);
}

void fragment() {
    // 1. 获取物体的原始颜色和 Alpha 值
    vec4 tex_color = texture(TEXTURE, UV);
    
    // 2. 将连续的 UV 坐标，根据纹理像素大小和自定义的块大小进行栅格化（下采样）
    // TEXTURE_PIXEL_SIZE 得到的是单个纹素在 UV 坐标下的尺寸
    vec2 uv_snapped = floor(UV / TEXTURE_PIXEL_SIZE / vec2(block_size)) * vec2(block_size) * TEXTURE_PIXEL_SIZE;
    
    // 3. 基于栅格化后的坐标，算出当前“像素块”的唯一随机值
    float rand_val = random(uv_snapped);
    
    // 4. 计算消融遮罩 (Dissolve Mask)
    // 如果该网格的随机值大于当前进度，保留该网格，否则滤除 (Alpha 为 0)
    float dissolve_mask = step(progress, rand_val);
    
    // 5. 计算边缘发光区域 (Edge Glow)
    // 当随机值刚好在进度线边缘（progress 到 progress + edge_width 之间）时，计算出一个边缘区域
    float edge_mask = step(progress, rand_val) * (1.0 - step(progress + edge_width, rand_val));
    
    // 6. 颜色混合
    // 将边缘发光颜色混合到原始纹理上
    vec4 final_color = mix(tex_color, edge_color, edge_mask);
    
    // 7. 最终输出：将计算好的消融遮罩作用于 Alpha 通道
    COLOR = vec4(final_color.rgb, tex_color.a * dissolve_mask);
}