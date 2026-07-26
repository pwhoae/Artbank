shader_type spatial;
render_mode blend_mix, depth_draw_always, cull_back, diffuse_burley, specular_schlick_ggx;

/* STREAMING_CHUNK: Defining uniforms for glass color and PBR properties... */
uniform vec4 glass_color : source_color = vec4(0.85, 0.92, 1.0, 0.1);
uniform float roughness : hint_range(0.0, 1.0, 0.01) = 0.03;
uniform float metallic : hint_range(0.0, 1.0, 0.01) = 0.1;

/* STREAMING_CHUNK: Defining uniforms for Fresnel power and reflection rim... */
uniform float fresnel_power : hint_range(0.5, 10.0, 0.1) = 4.0;

/* STREAMING_CHUNK: Defining uniforms for Screen Texture Refraction... */
uniform float refraction_strength : hint_range(0.0, 0.1, 0.001) = 0.015;
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;

/* STREAMING_CHUNK: Defining optional Normal Map for surface defects like water droplets or smudges... */
uniform sampler2D normal_map : hint_normal;
uniform float normal_depth : hint_range(0.0, 2.0, 0.05) = 0.5;

/* STREAMING_CHUNK: Calculating Fresnel rim reflection factor... */
float calculate_fresnel(float power, vec3 normal, vec3 view_dir) {
return pow(1.0 - clamp(dot(normalize(normal), normalize(view_dir)), 0.0, 1.0), power);
}

void fragment() {
/* STREAMING_CHUNK: Unpacking normal map texture if assigned... */
if (textureSize(normal_map, 0).x > 1) {
NORMAL_MAP = texture(normal_map, UV).rgb;
NORMAL_MAP_DEPTH = normal_depth;
}

/* STREAMING_CHUNK: Computing view-dependent Fresnel effect... */
float fresnel = calculate_fresnel(fresnel_power, NORMAL, VIEW);

/* STREAMING_CHUNK: Sampling screen texture behind glass with normal offset refraction... */
vec2 refracted_uv = SCREEN_UV + (NORMAL.xy * refraction_strength);
vec3 refracted_color = texture(screen_texture, refracted_uv).rgb;

/* STREAMING_CHUNK: Blending base color, refraction color, and outputting material channels... */
// 將折射背景與玻璃色彩根據 Alpha 混合
ALBEDO = mix(refracted_color, glass_color.rgb, glass_color.a);

ROUGHNESS = roughness;
METALLIC = metallic;

// 透過菲涅爾效應（Fresnel）讓玻璃邊緣（視線切角處）更不透明，呈現真實玻璃質感
ALPHA = clamp(glass_color.a + fresnel * 0.7, 0.0, 1.0);

// 邊緣微微自發光增強高光反射效果
EMISSION = glass_color.rgb * fresnel * 0.25;


}