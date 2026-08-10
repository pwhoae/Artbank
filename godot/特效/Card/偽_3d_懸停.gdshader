shader_type canvas_item;

// 旋轉角度參數（單位：度）
uniform float x_rot : hint_range(-90.0, 90.0) = 0.0;
uniform float y_rot : hint_range(-90.0, 90.0) = 0.0;
uniform float fov : hint_range(1.0, 179.0) = 90.0;
uniform float inset : hint_range(0.0, 1.0) = 0.0;

// 將 2D 矩形轉為透視矩陣投影
void fragment() {
    // 將 UV 座標中心點移至 (0, 0)
    vec2 uv = (UV - vec2(0.5)) * (1.0 + inset);
    
    // 轉為弧度
    float rad_x = radians(x_rot);
    float rad_y = radians(y_rot);
    
    // 建立旋轉矩陣
    float sin_x = sin(rad_x), cos_x = cos(rad_x);
    float sin_y = sin(rad_y), cos_y = cos(rad_y);
    
    // 建立 3D 射線
    vec3 ray = vec3(uv, 0.5 / tan(radians(fov) * 0.5));
    
    // 繞 Y 軸與 X 軸旋轉射線
    ray.xz = mat2(vec2(cos_y, -sin_y), vec2(sin_y, cos_y)) * ray.xz;
    ray.yz = mat2(vec2(cos_x, -sin_x), vec2(sin_x, cos_x)) * ray.yz;
    
    // 投影回 2D 平面
    vec2 proj_uv = ray.xy / (ray.z + 0.5) + vec2(0.5);
    
    // 越界處裁切透明，其餘採樣紋理
    if (proj_uv.x < 0.0 || proj_uv.x > 1.0 || proj_uv.y < 0.0 || proj_uv.y > 1.0) {
        COLOR = vec4(0.0);
    } else {
        COLOR = texture(TEXTURE, proj_uv);
    }
}