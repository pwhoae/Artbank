/*故障著色器 https://share.gemini.google/HPIAxyVBcq7Y*/
shader_type canvas_item;

// 1. 基础物理参数定义与范围控制
uniform float shake_power : hint_range(0.0, 0.1) = 0.03;      // 整体水平抖动强度
uniform float shake_rate : hint_range(0.0, 1.0) = 0.25;       // 抖动爆发率 (0代表无抖动, 1代表始终在抖动)
uniform float shake_speed : hint_range(1.0, 40.0) = 12.0;    // 抖动频率 (每秒抖动包络重算次数)
uniform float block_size : hint_range(5.0, 100.0) = 25.0;    // 水平分割条块密度
uniform float color_separation : hint_range(0.0, 0.05) = 0.012; // RGB 通道分色距离 (色差)
uniform float scanline_density : hint_range(0.0, 500.0) = 180.0; // 扫描线疏密度
uniform float scanline_opacity : hint_range(0.0, 1.0) = 0.3;     // 扫描线遮罩透明度
uniform float noise_opacity : hint_range(0.0, 0.5) = 0.12;      // 噪点颗粒混合度

// 用于产生屏幕噪波的伪随机函数
float random(vec2 uv) {
    return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453123);
}

void fragment() {
    vec2 uv = UV;
    float time = TIME;

    // 2. 计算离散的时间步骤，创造不连续的阶梯式突发抖动
    float glitch_time = floor(time * shake_speed);
    
    // 基于概率计算当前时刻是否产生抖动激发
    float is_shaking = step(1.0 - shake_rate, random(vec2(glitch_time, 2.718)));
    
    // 3. 计算水平整体振荡偏移 (Shake Jitter)
    // 产生在 -shake_power 到 +shake_power 之间的随机振幅
    float shake_offset = (random(vec2(glitch_time, 1.15)) * 2.0 - 1.0) * shake_power * is_shaking;
    
    // 4. 计算水平局部色块错位偏移 (Block Jitter)
    // 根据垂直高度切分像素快并随机偏移其中部分块
    float block_y = floor(uv.y * block_size);
    float block_noise = random(vec2(block_y, glitch_time));
    float block_offset = 0.0;
    
    // 若特定行的随机系数低于设定阈值，则使该行发生侧向偏移
    if (block_noise < 0.25 * is_shaking) {
        block_offset = (random(vec2(block_noise, 4.312)) * 2.0 - 1.0) * shake_power * 1.8;
    }

    // 叠加整体抖动及条带偏移
    vec2 uv_offset = vec2(shake_offset + block_offset, 0.0);
    
    // 5. 应用色像差 (Chromatic Aberration) 通道位移
    // 红色通道和蓝色通道反向溢出，产生红青分色霓虹视觉
    vec2 uv_r = uv + uv_offset + vec2(color_separation * is_shaking, 0.0);
    vec2 uv_g = uv + uv_offset;
    vec2 uv_b = uv + uv_offset - vec2(color_separation * is_shaking, 0.0);

    // 采样贴图并进行边界安全夹持 (防边缘拉伸)
    vec4 color_r = texture(TEXTURE, clamp(uv_r, vec2(0.0), vec2(1.0)));
    vec4 color_g = texture(TEXTURE, clamp(uv_g, vec2(0.0), vec2(1.0)));
    vec4 color_b = texture(TEXTURE, clamp(uv_b, vec2(0.0), vec2(1.0)));
    
    // 融合成最终复合通道颜色
    vec4 final_color = vec4(color_r.r, color_g.g, color_b.b, color_g.a);

    // 6. 产生水平扫描线视觉效果
    float scanline = sin(uv.y * scanline_density * 3.14159265);
    // 映射正弦值 [-1, 1] 到 [0, 1] 区间，再结合不透明度衰减系数
    scanline = mix(1.0, (scanline + 1.0) * 0.5, scanline_opacity);
    final_color.rgb *= scanline;

    // 7. 像素颗粒雪花噪点混合 (Noise Grain)
    float noise = (random(uv + vec2(time, 0.0)) - 0.5) * noise_opacity;
    final_color.rgb += vec3(noise);

    COLOR = final_color;
}