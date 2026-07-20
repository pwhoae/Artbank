shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_burley, specular_schlick_ggx;

//  ---
// 提示：将此着色器赋予任何 MeshInstance3D 节点，并可配合一张噪点贴图 (Noise2D) 产生边缘撕裂融化效果。

uniform vec4 base_albedo : source_color = vec4(0.12, 0.13, 0.18, 1.0);
uniform sampler2D albedo_texture : source_color, filter_linear_mipmap, repeat_enable;

// 3D 扫光核心参数
uniform float sweep_speed : hint_range(0.0, 5.0) = 0.40;
uniform float sweep_width : hint_range(0.01, 1.0) = 0.50;
uniform float sweep_angle : hint_range(-180.0, 180.0) = -15.0;
uniform float glow_intensity : hint_range(0.0, 15.0) = 1.80;
uniform float dispersion : hint_range(0.0, 0.3) = 0.02; // 边缘RGB折射色散
uniform bool enable_rainbow = true;
uniform vec3 single_beam_color : source_color = vec3(0.502, 0.000, 1.000);

// 3D 菲涅尔边缘掠射高亮 (Rim Light) 参数
uniform float rim_power : hint_range(0.1, 8.0) = 1.20;
uniform float rim_intensity : hint_range(0.0, 5.0) = 1.00;

// 溶解边缘动态噪声
uniform float noise_strength : hint_range(0.0, 1.0) = 0.25;

varying vec3 v_local_pos;

void vertex() {
    // 捕获模型局部坐标，使扫光相对于物体自身的姿态运行
    v_local_pos = VERTEX;
}

void fragment() {
    // 基础漫反射纹理混合
    vec4 tex_color = texture(albedo_texture, UV);
    ALBEDO = base_albedo.rgb * tex_color.rgb;
    
    // 旋转变换：沿指定角度产生扫光坐标路径
    float rad = radians(sweep_angle);
    float s = sin(rad);
    float c = cos(rad);
    float sweep_coord = v_local_pos.x * c - v_local_pos.y * s;
    
    // 随时间周期推移的扫描基准线
    float sweep_pos = mod(TIME * sweep_speed, 3.0) - 1.5;
    float dist = sweep_coord - sweep_pos;
    
    // 噪声贴图采样，利用噪声为扫描锋芒赋予扭曲和破碎质感 (还原视频第5~8帧的火焰融化感)
    
    // 菲涅尔方程计算：获取表面与视角垂直的轮廓带
    float fresnel = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), rim_power);
    float rim_glow = fresnel * rim_intensity;
    
    vec3 sweep_addition = vec3(0.0);
    
    if (enable_rainbow) {
        // --- RGB 炫彩偏折 (Chromatic Aberration) 算法 ---
        float r_mask = smoothstep(sweep_width, 0.0, abs(dist - dispersion));
        float g_mask = smoothstep(sweep_width, 0.0, abs(dist));
        float b_mask = smoothstep(sweep_width, 0.0, abs(dist + dispersion));
        
        sweep_addition = vec3(r_mask, g_mask, b_mask) * glow_intensity;
    } else {
        // --- 纯单色/暖金烈焰扫光 ---
        float mono_mask = smoothstep(sweep_width, 0.0, abs(dist));
        sweep_addition = single_beam_color * mono_mask * glow_intensity;
    }
    
    // 将扫描线和菲涅尔边缘光晕融合：扫光经过轮廓边缘时，辉光由于菲涅尔指数会成倍放大发散！
    vec3 final_emission = sweep_addition * (1.0 + rim_glow);
    EMISSION = final_emission;
}