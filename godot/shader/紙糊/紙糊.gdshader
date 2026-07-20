/* STREAMING_CHUNK: Coding the 2D Papercraft canvas_item shader... */
shader_type canvas_item;

// --- 性能控制与采样器设定 ---
render_mode blend_mix;

// --- 材质属性通道 ---
uniform float grid_density : hint_range(5.0, 200.0) = 45.0;            // 三角形密度（数值越小，多边形面越大）
uniform float poly_shading_intensity : hint_range(0.0, 1.0) = 0.18;   // 三角面暗部/亮部随机起伏强度（模拟折纸受光）
uniform float paper_grain_strength : hint_range(0.0, 0.3) = 0.08;     // 纸张纤维噪点强度
uniform float paper_fold_strength : hint_range(0.0, 0.5) = 0.12;       // 纸张大褶皱阴影强度

// --- 剪纸边缘/描边设定 ---
uniform vec4 paper_edge_color : source_color = vec4(0.95, 0.93, 0.88, 1.0); // 纸片裁剪边缘的颜色（通常用米白或淡黄模拟纸芯）
uniform float paper_edge_thickness : hint_range(0.0, 10.0) = 1.5;     // 纸边厚度（像素级别）
uniform float alpha_threshold : hint_range(0.1, 0.9) = 0.4;            // 纸片裁剪的透明度阈值

// --- 纹理通道 ---
uniform sampler2D paper_noise_tex : filter_linear_mipmap, repeat_enable; // 纸张纤维/褶皱噪点贴图

/* STREAMING_CHUNK: Implementing helper function and UV transformation for triangulation... */
// 伪随机哈希函数：根据网格坐标生成唯一的随机值
float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453123);
}

void fragment() {
    // 1. 获取基础纹理尺寸
    vec2 tex_size = vec2(textureSize(TEXTURE, 0));
    
    // 2. 将 UV 转换为三角形网格坐标
    vec2 grid_uv = UV * grid_density;
    vec2 cell = floor(grid_uv);
    vec2 frac = fract(grid_uv);
    
    vec2 sample_uv;
    float tri_id; // 每个三角形块的唯一标识符，用于产生不同的色块偏移
    
    // 3. 三角剖分核心算法（交替对角线划分，使三角形网格看起来更自然、生动）
    bool alternate = mod(cell.x + cell.y, 2.0) < 1.0;
    if (alternate) {
        if (frac.x > frac.y) {
            sample_uv = (cell + vec2(0.666, 0.333)) / grid_density;
            tri_id = hash(cell + vec2(1.0, 0.0));
        } else {
            sample_uv = (cell + vec2(0.333, 0.666)) / grid_density;
            tri_id = hash(cell + vec2(0.0, 1.0));
        }
    } else {
        if (frac.x + frac.y < 1.0) {
            sample_uv = (cell + vec2(0.333, 0.333)) / grid_density;
            tri_id = hash(cell);
        } else {
            sample_uv = (cell + vec2(0.666, 0.666)) / grid_density;
            tri_id = hash(cell + vec2(1.0, 1.0));
        }
    }

    // 4. 对插值采样后的低多边形块进行颜色提取
    vec4 base_color = texture(TEXTURE, sample_uv);
    
    // 如果采样的核心点是透明的，直接丢弃或保留透明
    if (base_color.a < alpha_threshold) {
        base_color.a = 0.0;
    }

    /* STREAMING_CHUNK: Applying paper lighting effects and fiber noise... */
    // 5. 模拟折纸微小受光面（Low Poly Shading）
    // 通过给三角形分配独立的随机亮暗偏置，模拟面朝不同方向的纸折叠光感
    float light_facet = (tri_id * 2.0 - 1.0) * poly_shading_intensity;
    base_color.rgb = clamp(base_color.rgb + vec3(light_facet), 0.0, 1.0);

    // 6. 融合纸张纤维（Paper Grain）与大褶皱（Crumple）
    // 使用 UV 坐标读取纸张物理噪点（不受低多边形化影响，使其像是“画在碎纸上”）
    vec4 noise_val = texture(paper_noise_tex, UV * 2.0);
    float grain = (noise_val.r - 0.5) * paper_grain_strength;
    float fold = (noise_val.g - 0.5) * paper_fold_strength;
    
    base_color.rgb = clamp(base_color.rgb + vec3(grain + fold), 0.0, 1.0);

    // 7. 纸张边缘描边（Outline），模拟剪纸时纸张切口露出的浅色纸芯
    if (base_color.a > 0.0 && paper_edge_thickness > 0.0) {
        vec2 stroke_step = paper_edge_thickness / tex_size;
        float min_alpha = 1.0;
        
        // 采样周边八个方向的透明度
        min_alpha = min(min_alpha, texture(TEXTURE, sample_uv + vec2(stroke_step.x, 0.0)).a);
        min_alpha = min(min_alpha, texture(TEXTURE, sample_uv + vec2(-stroke_step.x, 0.0)).a);
        min_alpha = min(min_alpha, texture(TEXTURE, sample_uv + vec2(0.0, stroke_step.y)).a);
        min_alpha = min(min_alpha, texture(TEXTURE, sample_uv + vec2(0.0, -stroke_step.y)).a);
        min_alpha = min(min_alpha, texture(TEXTURE, sample_uv + vec2(stroke_step.x, stroke_step.y)).a);
        min_alpha = min(min_alpha, texture(TEXTURE, sample_uv + vec2(-stroke_step.x, -stroke_step.y)).a);
        
        // 如果处于边界（周边有透明像素），则将该像素渲染为纸张裁剪边缘色
        if (min_alpha < alpha_threshold) {
            base_color.rgb = mix(base_color.rgb, paper_edge_color.rgb, paper_edge_color.a);
        }
    }

    COLOR = base_color;
}
