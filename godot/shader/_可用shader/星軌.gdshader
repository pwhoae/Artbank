//=============================================================================
// 3D Procedural Star Trails Spatial Shader (Godot 4.x)
// 適用於半球體(Sky Dome)或任何逆向渲染的包覆式球體網格。
//
// 使用說明：
// 1. 建立一個 MeshInstance3D，並為其指定一個內凹的 SphereMesh（內表面渲染）。
// 2. 將此 Shader 套用至 ShaderMaterial。
// 3. 打開 "Render Mode" -> 將 "Unshaded" 及 "Cull Front" 或 "Cull Disable" 啟用。
//=============================================================================
shader_type spatial;
render_mode unshaded, cull_disabled;

uniform vec3 rotation_axis = vec3(-0.5025, 0.5025, 0.7035);
uniform float rotation_speed : hint_range(-0.5, 0.5) = 0.1500;
uniform float trail_length_factor : hint_range(0.1, 10.0) = 2.80;
uniform float trail_density : hint_range(10.0, 500.0) = 100.0;
uniform float star_threshold : hint_range(0.4, 0.95) = 0.580;
uniform float star_brightness : hint_range(1.0, 30.0) = 12.00;
uniform float nebula_intensity : hint_range(0.0, 3.0) = 2.00;

uniform vec3 sky_color_dark : source_color = vec3(0.0235, 0.0000, 0.0706);
uniform vec3 sky_color_bright : source_color = vec3(0.1412, 0.0000, 0.1098);
uniform vec3 star_color : source_color = vec3(0.9922, 0.8784, 0.2784);
uniform vec3 star_color_cold : source_color = vec3(0.6588, 0.3333, 0.9686);

// 3D 雜湊映射，提供完全程序化的恆星雜點分佈
float hash3D(vec3 p) {
    return fract(sin(dot(p, vec3(127.1, 311.7, 74.7))) * 43758.5453123);
}

// 三維數值噪點算法 (3D Value Noise)
float noise3D(vec3 p) {
    vec3 i = floor(p);
    vec3 f = fract(p);
    vec3 u = f * f * (3.0 - 2.0 * f);

    return mix(
        mix(
            mix(hash3D(i + vec3(0.0, 0.0, 0.0)), hash3D(i + vec3(1.0, 0.0, 0.0)), u.x),
            mix(hash3D(i + vec3(0.0, 1.0, 0.0)), hash3D(i + vec3(1.0, 1.0, 0.0)), u.x),
            u.y
        ),
        mix(
            mix(hash3D(i + vec3(0.0, 0.0, 1.0)), hash3D(i + vec3(1.0, 0.0, 1.0)), u.x),
            mix(hash3D(i + vec3(0.0, 1.0, 1.0)), hash3D(i + vec3(1.0, 1.0, 1.0)), u.x),
            u.y
        ),
        u.z
    );
}

void fragment() {
    // 取得觀察方向（等同於物件局部座標位置的規格化方向）
    // 在標準球體下，可直接使用內置的 VERTEX 或眼球入射向量 VIEW
    vec3 view_dir = normalize(VERTEX);

    // 建立旋轉系統的正交基底 (Orthonormal Basis)
    vec3 axis = normalize(rotation_axis);
    vec3 tangent = normalize(cross(axis, abs(axis.y) < 0.99 ? vec3(0.0, 1.0, 0.0) : vec3(1.0, 0.0, 0.0)));
    vec3 binormal = cross(axis, tangent);

    // 計算在旋轉坐標系中的圓柱投影坐標
    float z_prime = dot(view_dir, axis);
    vec3 proj = view_dir - z_prime * axis;
    float r = length(proj);

    // 計算當前夾角 theta (-PI ~ PI)
    float theta = atan(dot(proj, binormal), dot(proj, tangent));

    // 使用上帝時間控制星體旋轉偏移
    float current_theta = theta + TIME * rotation_speed;

    // 星軌貼圖坐標（沿著圓弧高倍率縮放以形成長條狀星軌）
    vec3 noise_coord = vec3(
        cos(current_theta) * trail_length_factor,
        sin(current_theta) * trail_length_factor,
        z_prime * trail_density
    );

    // 採樣多層噪點混合（使星軌疏密與亮暗更具層次感）
    float n = noise3D(noise_coord);
    n += 0.5 * noise3D(noise_coord * 2.0);
    n /= 1.5;

    // 將噪點經過臨界值(Threshold)過濾並進行亮光乘積 (HDR 輝光)
    float trail_intensity = smoothstep(star_threshold, 1.0, n);
    trail_intensity = pow(trail_intensity, 4.0) * star_brightness;

    // 根據星軌空間哈希值，隨機混和冷暖星光色彩，模擬天文星等與恆星光譜
    float color_mix_seed = hash3D(floor(noise_coord * 0.15));
    vec3 active_star_color = mix(star_color, star_color_cold, color_mix_seed);

    // 微速自轉背景星雲
    float neb_theta = theta + TIME * (rotation_speed * 0.8);
    vec3 nebula_coord = vec3(
        cos(neb_theta) * 1.5,
        sin(neb_theta) * 1.5,
        z_prime * 2.2
    );

    // 雲氣背景多層 FBM 計算
    float neb = noise3D(nebula_coord) * 0.5;
    neb += noise3D(nebula_coord * 2.5) * 0.25;
    neb += noise3D(nebula_coord * 5.0) * 0.125;

    // 構建深空星雲色暈
    vec3 background_nebula = mix(sky_color_dark, sky_color_bright, smoothstep(0.2, 0.75, neb) * nebula_intensity);

    // 輸出最終自發光像素
    ALBEDO = background_nebula + active_star_color * trail_intensity;
}