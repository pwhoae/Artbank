shader_type spatial;
render_mode cull_disabled;

uniform float wind_speed = 2.5;
uniform float wind_strength = 0.18;

void vertex() {
    float factor = pow(UV.y, 1.5); // 越靠近底部擺動越大，頂部固定
    float wave = sin(TIME * wind_speed + VERTEX.y * 3.0 + VERTEX.x) * wind_strength;
    VERTEX.z += wave * factor;
}