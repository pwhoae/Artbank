/* STREAMING_CHUNK: Coding the 3D Papercraft spatial shader... */
shader_type spatial;

// 强制 flat 渲染：禁用顶点的插值过渡，实现刀切一般的低多边形硬边缘（Low Poly Flat Shading）
render_mode diffuse_toon,specular_disabled;
// --- 纸糊变形设定 ---
uniform float vertex_jitter : hint_range(0.0, 0.05) = 0.01;      // 顶点随机微调（模拟手工纸片拼接的不完美感）
uniform float jitter_frequency : hint_range(1.0, 20.0) = 8.0;   // 纸张微颤/呼吸率（让静止的纸片呈现出活物质感，若不需要置0即可）

// --- 贴图与色调 ---
uniform sampler2D albedo_texture : source_color, filter_linear_mipmap; // 基础贴图
uniform vec4 paper_tint : source_color = vec4(1.0, 0.98, 0.95, 1.0);  // 纸张基底色偏（略微的发黄/奶白色，使塑料感转为纸感）
uniform float paper_roughness : hint_range(0.5, 1.0) = 0.95;          // 纸张粗糙度

// --- 纸张纤维噪点 ---
uniform sampler2D paper_noise_tex : filter_linear_mipmap, repeat_enable; // 纸张微观纤维噪点
uniform float paper_grain_depth : hint_range(0.0, 0.1) = 0.04;          // 纸纤维凹凸深度

/* STREAMING_CHUNK: Implementing 3D vertex displacement for handmade paper imperfection... */
// 简易 3D 噪点生成，用于顶点扰动
float hash3D(vec3 p) {
    return fract(sin(dot(p, vec3(127.1, 311.7, 74.7))) * 43758.5453123);
}

void vertex() {
    // 1. 顶点轻微形变
    // 用顶点原始坐标作为随机种子，使模型不同部位产生轻微位移，造成纸张受力弯曲、裁剪不整齐的手工纸糊效果
    float seed = hash3D(VERTEX);
    vec3 displacement = vec3(
        hash3D(VERTEX + vec3(1.0)),
        hash3D(VERTEX + vec3(2.0)),
        hash3D(VERTEX + vec3(3.0))
    ) - vec3(0.5);
    
    // 将顶点沿着法线方向和随机方向偏移，营造出纸质不平整性
    VERTEX += (NORMAL * displacement.x + displacement * 0.5) * vertex_jitter;
}

/* STREAMING_CHUNK: Creating 3D fragment processing and triplanar paper texture projection... */
void fragment() {
    // 2. 采样 3D 物体表面贴图
    vec4 tex_color = texture(albedo_texture, UV);
    
    // 3. 混合纸张基准底色（让纹理带上纤维底色纸张质感）
    vec3 final_albedo = tex_color.rgb * paper_tint.rgb;
    
    // 4. 三平面（Triplanar）或 UV 纸质噪点投影
    // 为了防止纸质纤维拉伸，我们直接采样纸张噪点贴图
    vec4 noise_val = texture(paper_noise_tex, UV * 4.0);
    float grain = (noise_val.r - 0.5) * paper_grain_depth;
    
    // 将纸张噪点融合到反射率（Albedo）和微观凹凸
    ALBEDO = clamp(final_albedo + vec3(grain), 0.0, 1.0);
    
    // 纸张表面属于散射材质（不反光），设置极高的粗糙度
    ROUGHNESS = paper_roughness;
    METALLIC = 0.0;
    
    // 5. 模拟纸糊边缘磨损效果
    // 利用 Fresnel（菲涅尔）效应，让斜对摄像机视角的模型边缘（即纸壳折角处）微微泛白，凸显裁切边缘的纤维磨损
    float fresnel = pow(1.0 - dot(NORMAL, VIEW), 3.0);
    vec3 paper_edge_wear = vec3(0.15) * fresnel;
    ALBEDO = clamp(ALBEDO + paper_edge_wear, 0.0, 1.0);
}