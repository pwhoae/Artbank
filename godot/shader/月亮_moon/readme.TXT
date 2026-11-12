4. 將 `image_393a0f.png` 紋理檔案直接拖曳到「檢查器」面板中「著色器參數」下的 **月球反照率** 紋理槽中！

For creating a realistic 3D Moon in Godot 4, a standard PBR shader often isn't enough. The real Moon has a unique rough, dusty surface (regolith) that reflects light back toward its source rather than scattering it like a smooth ball (known as retroreflection).

Here is a highly optimized, fully featured Godot 4 spatial shader (`.gdshader`). It includes:

* **Procedural Bump Mapping:** Generates micro-normals from the luminance of your provided texture `image_393a0f.png` to give craters and highlands physical depth.
* **Minnaert/Lommel-Seeliger Rough Diffuse Reflection:** A custom lighting model that prevents the edges of the moon sphere from becoming too dark, mimicking the actual retroreflective properties of lunar soil.
* **Atmospheric/Exosphere Rim Glow:** A subtle, customizable backlight glow.
* **Slow Continuous Rotation:** An built-in uniform to rotate the moon on its axis automatically.

### Setup Instructions in Godot 4:

1. Create a `MeshInstance3D` in your scene and set its mesh to a **SphereMesh** (increase the radial and rings segments for smoothness, e.g., 64x32).
2. Create a new `ShaderMaterial` in the Material slot of the sphere.
3. Paste the shader code below into the shader editor.
4. Drag and drop the `image_393a0f.png` texture file directly into the **Moon Albedo** texture slot in the Inspector under Shader Parameters!

### Parameters Breakdown:

* **Moon Albedo:** Load your `image_393a0f.png` here.
* **Rotation Speed:** Controls how fast the moon rotates on its vertical axis.
* **Bump Strength:** Simulates physical crevices and craters by calculating gradients of the moon surface pattern. Increase this for deep, dramatic shadows on the terminator line (where light transitions into dark).
* **Minnaert Roughness & Retroreflection Strength:** These parameters control the unique retroreflective falloff of the moon. Increasing these values will make the edge of the lit side look flatter and more like a real full moon instead of a standard smooth gradient sphere.
