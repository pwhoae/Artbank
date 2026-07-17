//4. 將 `image_393a0f.png` 紋理檔案直接拖曳到「檢查器」面板中「著色器參數」下的 **月球反照率** 紋理槽中！

/* STREAMING_CHUNK:Defining shader type and render modes... */
shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back;

/* STREAMING_CHUNK:Declaring uniforms for textures and parameters... */
// --- Texture Inputs ---
uniform sampler2D moon_albedo : source_color, hint_default_white, filter_linear_mipmap;

// --- Physical Parameters ---
uniform float rotation_speed : hint_range(-0.5, 0.5) = 0.02;
uniform float bump_strength : hint_range(0.0, 0.2) = 0.05;
uniform float roughness : hint_range(0.0, 1.0) = 0.95;
uniform float metallic : hint_range(0.0, 1.0) = 0.0;

// --- Retroreflection & Lighting Parameters ---
uniform float retroreflection_strength : hint_range(0.0, 1.0) = 0.8;
uniform float minnaert_roughness : hint_range(0.0, 2.0) = 1.2;

// --- Rim & Atmosphere Effects ---
uniform vec4 rim_color : source_color = vec4(0.8, 0.85, 1.0, 1.0);
uniform float rim_intensity : hint_range(0.0, 5.0) = 0.4;
uniform float rim_power : hint_range(0.1, 10.0) = 3.5;

/* STREAMING_CHUNK:Implementing rotation and vertex displacement... */
void vertex() {
// Rotate the moon over time around its Y-axis
float angle = TIME * rotation_speed;
mat3 rot_y = mat3(
vec3(cos(angle), 0.0, -sin(angle)),
vec3(0.0, 1.0, 0.0),
vec3(sin(angle), 0.0, cos(angle))
);

VERTEX = rot_y * VERTEX;
NORMAL = rot_y * NORMAL;


}

/* STREAMING_CHUNK:Calculating procedural normal map from height... */
// Helper function to sample height (grayscale value of the albedo map)
float get_height(vec2 uv) {
vec3 color = texture(moon_albedo, uv).rgb;
// Convert to grayscale using standard luminance coefficients
return dot(color, vec3(0.299, 0.587, 0.114));
}

void fragment() {
vec2 uv = UV;

// Sample the albedo texture using the provided image_393a0f.png
vec4 tex_color = texture(moon_albedo, uv);
ALBEDO = tex_color.rgb;

// Set basic PBR properties
ROUGHNESS = roughness;
METALLIC = metallic;

/* STREAMING_CHUNK:Assembling PBR material properties in fragment shader... */
// Calculate procedural bump map/normal offset to bring craters out
// We offset UVs slightly in x and y to construct tangent-space normals
float texel_size = 0.002; 
float h_center = get_height(uv);
float h_right  = get_height(uv + vec2(texel_size, 0.0));
float h_up     = get_height(uv + vec2(0.0, texel_size));

// Calculate finite differences to generate tangent space normal
vec3 normal_offset = vec3(
	(h_center - h_right) * bump_strength,
	(h_center - h_up) * bump_strength,
	1.0
);

// Apply the generated normal offset to the vertex normal
NORMAL_MAP = normalize(normal_offset);

// Calculate a realistic atmospheric rim glow
// Fresnel effect: higher value on the extreme edges facing away from the camera
float fresnel = pow(1.0 - clamp(dot(normalize(NORMAL), normalize(VIEW)), 0.0, 1.0), rim_power);
EMISSION = rim_color.rgb * fresnel * rim_intensity * tex_color.rgb;


}

/* STREAMING_CHUNK:Creating realistic retroreflective light processor... */
void light() {
// Calculate diffuse lighting
float NdotL = clamp(dot(NORMAL, LIGHT), 0.0, 1.0);
float NdotV = clamp(dot(NORMAL, VIEW), 0.0, 1.0);

// Minnaert reflection model: 
// Designed to simulate rough, highly-scattering materials like lunar regolith
float minnaert = pow(NdotL * NdotV, minnaert_roughness);

// Mix between standard Lambertian diffuse and the specialized retroreflective Minnaert model
float final_diffuse = mix(NdotL, minnaert, retroreflection_strength);

// Output final light contribution
DIFFUSE_LIGHT += LIGHT_COLOR * ATTENUATION * final_diffuse;


}