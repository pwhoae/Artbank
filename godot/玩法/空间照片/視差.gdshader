shader_type canvas_item;

// 基础纹理（原图会自动传入 TEXTURE）
uniform sampler2D depth_texture : hint_default_black; // 深度图
uniform vec2 offset = vec2(0.0, 0.0);                 // 外部控制的偏移量（如鼠标或陀螺仪）
uniform float max_displacement : hint_range(0.0, 0.1) = 0.03; // 最大位移系数
uniform float focal_point : hint_range(0.0, 1.0) = 0.5;      // 聚焦平面（哪个深度不发生位移）

void fragment() {
    // 读取深度图（取红色通道作为深度值 0.0 ~ 1.0）
    float depth = texture(depth_texture, UV).r;
    
    // 计算视差偏移：以 focal_point 为基准，高亮（近处）向正方向偏，暗处（远处）向反方向偏
    vec2 parallax_offset = (depth - focal_point) * offset * max_displacement;
    
    // 对 UV 进行偏移，并限制在 0.0 ~ 1.0 之间防止越界拉伸（实际应用中图片边缘可稍微预留安全边）
    vec2 target_uv = clamp(UV + parallax_offset, vec2(0.0), vec2(1.0));
    
    // 输出最终颜色
    COLOR = texture(TEXTURE, target_uv);
}
