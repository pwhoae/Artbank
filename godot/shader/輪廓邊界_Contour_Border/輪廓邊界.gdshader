shader_type canvas_item;

// --- Uniforms ---
uniform int border_style : hint_range(0, 1) = 0;      // 0: Dots (Circles), 1: Dashes
uniform int border_shape : hint_range(0, 2) = 2;      // 0: Rounded Rectangle, 1: Circle/Ellipse, 2: Texture Alpha Outline

uniform vec4 border_color : source_color = vec4(0.2, 0.75, 1.0, 1.0);
uniform float border_thickness : hint_range(1.0, 50.0) = 8.0;
uniform float border_inset : hint_range(-50.0, 100.0) = 4.0; // Negative values allow padding expansion

uniform float dot_spacing : hint_range(5.0, 100.0) = 20.0;
uniform float dot_size : hint_range(1.0, 30.0) = 6.0;
uniform float dash_length : hint_range(2.0, 100.0) = 15.0;

uniform float speed : hint_range(-500.0, 500.0) = 150.0; // Positive = Clockwise, Negative = CCW
uniform float corner_radius : hint_range(0.0, 200.0) = 16.0;

uniform bool keep_original_texture = true;
uniform float alpha_threshold : hint_range(0.0, 1.0) = 0.2;

// Helper: 2D Signed Distance Field of a Rounded Rectangle
float sdRoundedBox(vec2 p, vec2 b, float r) {
    vec2 q = abs(p) - b + vec2(r);
    return min(max(q.x, q.y), 0.0) + length(max(q, 0.0)) - r;
}

// Helper: Map 2D coordinates on a rectangle perimeter to 1D clockwise distance
float get_rect_s(vec2 p, vec2 b) {
    float s = 0.0;
    float total_w = b.x * 2.0;
    float total_h = b.y * 2.0;
    
    if (abs(p.x) * b.y > abs(p.y) * b.x) {
        if (p.x > 0.0) {
            s = total_w + (p.y + b.y);
        } else {
            s = total_w * 2.0 + total_h + (b.y - p.y);
        }
    } else {
        if (p.y < 0.0) {
            s = p.x + b.x;
        } else {
            s = total_w + total_h + (b.x - p.x);
        }
    }
    return s;
}

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    vec2 size = 1.0 / TEXTURE_PIXEL_SIZE; // Auto-calculated texture resolution
    
    // Initialize output
    vec4 final_color = keep_original_texture ? tex_color : vec4(0.0);
    float border_alpha = 0.0;
    
    if (border_shape == 0) {
        // --- 1. ROUNDED RECTANGLE ---
        vec2 p = (UV - vec2(0.5)) * size;
        vec2 b = size * 0.5 - vec2(border_inset);
        float r = min(corner_radius, min(b.x, b.y));
        
        float dist = sdRoundedBox(p, b, r);
        float abs_dist = abs(dist);
        
        if (abs_dist <= border_thickness * 0.5) {
            float s = get_rect_s(p, b);
            float shifted_s = s - TIME * speed;
            
            if (border_style == 0) {
                float s_center = round(shifted_s / dot_spacing) * dot_spacing;
                float ds = shifted_s - s_center;
                float d_to_dot = sqrt(ds * ds + dist * dist);
                border_alpha = smoothstep(dot_size * 0.5 + 0.5, dot_size * 0.5 - 0.5, d_to_dot);
            } else {
                float period = dash_length + dot_spacing;
                float local_s = mod(shifted_s, period);
                if (local_s < dash_length) {
                    border_alpha = smoothstep(border_thickness * 0.5 + 0.5, border_thickness * 0.5 - 0.5, abs_dist);
                }
            }
        }
    }
    else if (border_shape == 1) {
        // --- 2. PERFECT CIRCLE / ELLIPSE ---
        vec2 p = (UV - vec2(0.5)) * size;
        float r = min(size.x, size.y) * 0.5 - border_inset;
        float dist = length(p) - r;
        float abs_dist = abs(dist);
        
        if (abs_dist <= border_thickness * 0.5) {
            float theta = atan(p.y, p.x);
            float angle_clean = theta < 0.0 ? theta + 6.28318530718 : theta;
            float s = angle_clean * r;
            float shifted_s = s - TIME * speed;
            
            if (border_style == 0) {
                float s_center = round(shifted_s / dot_spacing) * dot_spacing;
                float ds = shifted_s - s_center;
                float d_to_dot = sqrt(ds * ds + dist * dist);
                border_alpha = smoothstep(dot_size * 0.5 + 0.5, dot_size * 0.5 - 0.5, d_to_dot);
            } else {
                float period = dash_length + dot_spacing;
                float local_s = mod(shifted_s, period);
                if (local_s < dash_length) {
                    border_alpha = smoothstep(border_thickness * 0.5 + 0.5, border_thickness * 0.5 - 0.5, abs_dist);
                }
            }
        }
    }
    else if (border_shape == 2) {
        // --- 3. TEXTURE ALPHA CONTOUR (PERFECT STICKER FIT - Fix for image_e52921.png) ---
        float current_alpha = tex_color.a;
        
        // Locate transparent edge boundaries
        if (current_alpha < alpha_threshold) {
            float max_alpha = 0.0;
            int samples = 24; // Increased samples for higher contour fidelity
            vec2 closest_opaque_dir = vec2(0.0);
            
            // Check neighborhood circular scan to trace outline
            for (int i = 0; i < samples; i++) {
                float angle = float(i) * 6.28318530718 / float(samples);
                vec2 offset = vec2(cos(angle), sin(angle)) * (border_thickness + border_inset) * TEXTURE_PIXEL_SIZE;
                float neighbor_alpha = texture(TEXTURE, UV + offset).a;
                if (neighbor_alpha > max_alpha) {
                    max_alpha = neighbor_alpha;
                    closest_opaque_dir = offset;
                }
            }
            
            if (max_alpha >= alpha_threshold) {
                // Calculate distance coordinate (s) based on angular position on the silhouette center
                vec2 p = (UV - vec2(0.5)) * size;
                float theta = atan(p.y, p.x);
                float angle_clean = theta < 0.0 ? theta + 6.28318530718 : theta;
                float approx_r = length(p);
                float s = angle_clean * approx_r;
                float shifted_s = s - TIME * speed;
                
                if (border_style == 0) {
                    // Circular Dots along custom alpha contours
                    float s_mod = mod(shifted_s, dot_spacing);
                    if (s_mod < dot_size) {
                        border_alpha = smoothstep(0.0, 0.2, max_alpha);
                    }
                } else {
                    // Dashes along custom alpha contours
                    float period = dash_length + dot_spacing;
                    float local_s = mod(shifted_s, period);
                    if (local_s < dash_length) {
                        border_alpha = smoothstep(0.0, 0.2, max_alpha);
                    }
                }
            }
        }
    }
    
    // Output calculation
    if (border_alpha > 0.0) {
        COLOR = mix(final_color, border_color, border_alpha);
    } else {
        COLOR = final_color;
    }
}