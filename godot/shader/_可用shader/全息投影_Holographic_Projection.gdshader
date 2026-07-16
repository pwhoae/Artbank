shader_type canvas_item;

// Color tint of the hologram (e.g., blue, green, or cyan)
uniform vec4 hologram_color : source_color = vec4(0.3, 0.6, 1.0, 1.0);

// Control the visibility of the scanlines
uniform float scanline_speed : hint_range(0.0, 10.0) = 1.0;
uniform float scanline_density : hint_range(1.0, 500.0) = 100.0;
uniform float scanline_intensity : hint_range(0.0, 1.0) = 0.35;

// Flickering effect parameters
uniform float flicker_speed : hint_range(0.0, 50.0) = 20.0;
uniform float flicker_intensity : hint_range(0.0, 1.0) = 0.05;

// Overall opacity of the hologram
uniform float alpha : hint_range(0.0, 1.0) = 0.7;

void fragment() {
    // Fetch the original texture color and alpha
    vec4 tex_color = texture(TEXTURE, UV);
    
    // If the original pixel is completely transparent, discard or keep transparent
    if (tex_color.a == 0.0) {
        discard;
    }

    // 1. Calculate scanlines using a sine wave relative to the screen/texture UV and TIME
    float scanline = sin(UV.y * scanline_density + TIME * scanline_speed);
    // Normalize sine wave from [-1, 1] to [0, 1]
    scanline = (scanline + 1.0) * 0.5;
    // Apply intensity curve
    scanline = mix(1.0, scanline, scanline_intensity);

    // 2. Add a subtle, random screen flicker
    float flicker = sin(TIME * flicker_speed) * cos(TIME * flicker_speed * 0.5);
    float flicker_factor = 1.0 - (flicker * flicker_intensity);

    // 3. Blend the original texture's brightness (luminance) with our hologram color
    float luminance = dot(tex_color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 final_color = hologram_color.rgb * (luminance + 0.3); // Add a little boost to highlight details

    // 4. Combine color, scanlines, flicker, and alpha
    float final_alpha = tex_color.a * alpha * scanline * flicker_factor;

    COLOR = vec4(final_color, final_alpha);
}