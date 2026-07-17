/* STREAMING_CHUNK: Defining shader type and render settings... */
shader_type spatial;
render_mode unshaded, depth_draw_never, cull_back, shadows_disabled;

/* STREAMING_CHUNK: Setting up uniform parameters... */
// Core Settings
uniform vec4 core_color : source_color = vec4(0.02, 0.0, 0.05, 1.0);
uniform float core_radius : hint_range(0.0, 1.0) = 0.9; //0.9
uniform float core_softness : hint_range(0.01, 0.5) = 0.04;

// Glowing Accretion Rim Settings
uniform vec4 inner_glow_color : source_color = vec4(0.9, 0.0, 0.6, 1.0); // Neon Pink/Magenta
uniform vec4 outer_glow_color : source_color = vec4(0.1, 0.3, 1.0, 1.0); // Cosmic Blue
uniform float glow_thickness : hint_range(0.01, 1.0) = 0.01;
uniform float glow_power : hint_range(0.1, 8.0) = 3.0;

// Gravitational Lensing & Refraction
uniform float distortion_strength : hint_range(-2.0, 2.0) = 0.25;
uniform float distortion_speed : hint_range(0.0, 10.0) = 1.5;

// Noise and Swirl Details
uniform sampler2D noise_tex : repeat_enable, filter_linear_mipmap;
uniform float noise_scale : hint_range(0.1, 5.0) = 1.5;
uniform float noise_strength : hint_range(0.0, 1.0) = 0.3;

// Screen Capture for Refraction
uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;

/* STREAMING_CHUNK: Vertex processor for unstable organic pulsing... */
void vertex() {
// Add a subtle cosmic heartbeat/pulse to the sphere mesh
float pulse = sin(TIME * distortion_speed * 1.5) * 0.015;
VERTEX += NORMAL * pulse;
}

/* STREAMING_CHUNK: Fragment processor calculating gravitational warping... */
void fragment() {
// 1. Calculate Fresnel (view-space dot product)
// On a sphere, this ranges from 0.0 (center) to 1.0 (outer silhouette edge)
float ndotv = dot(NORMAL, VIEW);
float fresnel = clamp(1.0 - ndotv, 0.0, 1.0);

// 2. Sample Swirling Noise Texture
// We rotate and slide the UV coordinates over time to simulate a spinning cosmic vortex
float angle = TIME * distortion_speed * 0.1;
mat2 rotation_matrix = mat2(vec2(cos(angle), -sin(angle)), vec2(sin(angle), cos(angle)));
vec2 rotated_uv = rotation_matrix * (UV - vec2(0.5)) + vec2(0.5);

vec2 noise_uv = rotated_uv * noise_scale;
noise_uv.y -= TIME * distortion_speed * 0.05;
float noise_val = texture(noise_tex, noise_uv).r;

/* STREAMING_CHUNK: Constructing gravitational lensing offset... */
// Calculate the screen distortion direction pointing outwards from the sphere's center.
// Since NORMAL is in view-space, NORMAL.xy perfectly points outward from the screen center of the mesh.
vec2 distortion_dir = NORMAL.xy;

// Create a secondary swirling distortion direction
float swirl_angle = noise_val * 6.28318 * noise_strength + (TIME * distortion_speed * 0.5);
vec2 swirl_dir = vec2(
	distortion_dir.x * cos(swirl_angle) - distortion_dir.y * sin(swirl_angle),
	distortion_dir.x * sin(swirl_angle) + distortion_dir.y * cos(swirl_angle)
);

// Ensure distortion peaks right at the event horizon boundary, then fades out outwards
float dist_mask = smoothstep(core_radius, core_radius + glow_thickness, fresnel) * (1.0 - fresnel);

// Blend direct radial refraction with swirl noise for a chaotic fluid energy effect
vec2 final_offset = mix(distortion_dir, swirl_dir, 0.45) * dist_mask * distortion_strength;

// 3. Capture and Warp Background screen pixels
vec2 distorted_screen_uv = SCREEN_UV + final_offset;
vec3 background_color = texture(screen_texture, distorted_screen_uv).rgb;

/* STREAMING_CHUNK: Styling neon glow colors and core masking... */
// 4. Calculate Glow Accretion Ring
float glow = pow(fresnel, glow_power);
// Distort the glow's outline using our noise to make it feel alive and violent
glow = clamp(glow * (1.0 + (noise_val - 0.5) * noise_strength), 0.0, 1.0);

// Create gradient from inner magenta to outer blue
vec3 neon_glow = mix(inner_glow_color.rgb, outer_glow_color.rgb, smoothstep(core_radius, 1.0, fresnel));

// 5. Calculate Singular Event Horizon (The Pitch Black Core)
float core_mask = smoothstep(core_radius, core_radius + core_softness, fresnel);

// Optional: Bright central singularity spark (the glowing pinpoint at the absolute center)
float center_spark = smoothstep(0.08, 0.0, fresnel) * 2.0;
vec3 core_with_singularity = mix(core_color.rgb + (outer_glow_color.rgb * center_spark), core_color.rgb, smoothstep(0.07, 0.12, fresnel));

/* STREAMING_CHUNK: Compositing final visual passes... */
// 6. Merge components: Start with distorted screen, add outer glowing gas, mask out the black hole core
vec3 output_color = background_color;
output_color = mix(output_color, neon_glow, glow * inner_glow_color.a);
output_color = mix(core_with_singularity, output_color, core_mask);

// Output final pixel color to screen
ALBEDO = output_color;


}