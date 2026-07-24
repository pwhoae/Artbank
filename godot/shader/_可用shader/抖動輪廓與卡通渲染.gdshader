/* STREAMING_CHUNK:Defining shader mode and hints... */
// ============================================================================
// Godot 4 - 3D Jitter Outline Shader (手绘抖动外轮廓线 - Pass 2)
// ============================================================================
// 使用方法：
// 1. 在 MeshInstance3D 主材质 (toon_surface) 的 Inspector 中找到 "Next Pass"。
// 2. 新建 ShaderMaterial 并赋予本 shader 文件。
// ============================================================================

shader_type spatial;

// 采用反向剔除 (cull_front)，仅渲染模型背面膨胀出的网格作为轮廓线
render_mode cull_front, unshaded, depth_draw_always;

group_uniforms Outline_Settings;
// 轮廓线基础颜色
uniform vec4 outline_color : source_color = vec4(0.12, 0.05, 0.22, 1.0);
// 轮廓线基础粗细
uniform float outline_thickness : hint_range(0.0, 0.2) = 0.015;
// 是否随视角距离动态微调粗细
uniform bool scale_with_distance = true;

group_uniforms Jitter_Settings;
// 是否开启顶点抖动
uniform bool enable_jitter = true;
// 抖动帧率 (例如 12.0 代表每秒抖动 12 次，模拟美漫/定格动画抽帧感)
uniform float jitter_speed : hint_range(1.0, 60.0) = 12.0;
// 抖动幅度 / 偏移强度
uniform float jitter_intensity : hint_range(0.0, 0.05) = 0.006;
// 空间噪波采样频率
uniform float noise_frequency : hint_range(1.0, 100.0) = 25.0;

/* STREAMING_CHUNK:Implementing 3D hash noise function... */
// 3D 空间 Hash 伪随机噪波生成函数
float hash3D(vec3 p) {
p = fract(p * vec3(443.897, 441.423, 437.195));
p += dot(p, p.yzx + 19.19);
return fract((p.x + p.y) * p.z);
}

/* STREAMING_CHUNK:Computing quantized vertex extrusion... */
void vertex() {
// 关键算法：将连续时间离散化 / 量子化 (Quantized Time)
// 从而产生 12 FPS / 8 FPS 手绘动画特有的阶梯式抽搐抖动感
float quantized_time = floor(TIME * jitter_speed) / jitter_speed;

// 视线距离补偿计算（防止远处物体线宽过粗或过细）
float distance_scale = 1.0;
if (scale_with_distance) {
    vec4 view_pos = MODELVIEW_MATRIX * vec4(VERTEX, 1.0);
    distance_scale = clamp(-view_pos.z * 0.1, 0.5, 3.0);
}

// 基于模型世界坐标与离散时间采样 3D 噪波
vec3 world_pos = (MODEL_MATRIX * vec4(VERTEX, 1.0)).xyz;
float noise_val = hash3D(floor(world_pos * noise_frequency) + vec3(quantized_time * 73.1));
float noise_offset = (noise_val * 2.0 - 1.0);

// 计算顶点膨胀厚度
float final_thickness = outline_thickness * distance_scale;
if (enable_jitter) {
    final_thickness += noise_offset * jitter_intensity * distance_scale;
}

// 沿着法线方向挤出顶点 (Inverted Hull)
VERTEX += NORMAL * max(0.0, final_thickness);
}

/* STREAMING_CHUNK:Setting fragment color output... */
void fragment() {
ALBEDO = outline_color.rgb;
ALPHA = outline_color.a;
}