#not success
如何在 Godot 4 中配置与使用
1.创建材质：1 分钟。在你的节点（如 Sprite2D 或 MeshInstance3D）上，新建一个 ShaderMaterial，并将上面的代码粘贴进 Shader 编辑器中。
2.分配噪声纹理：2 分钟。在 Shader 展开的参数列表（Shader Parameters）中，找到 noise_texture 槽位，点击下拉菜单选择 New NoiseTexture2D。展开这个 NoiseTexture2D，在 Noise 属性中选择 New FastNoiseLite。确保勾选 Seamless（无缝贴图，效果更自然）。
3.测试与动态控制：1 分钟。在编辑器中手动拖动 dissolve_value 参数。你会看到物体从边缘开始慢慢沙化/消散。代码控制小贴士：如果要在游戏运行中使用代码控制消散进度，只需在 GDScript 中修改材质的 uniform 属性：GDScript# 假设在 Tween 中用 1.5 秒的时间将物体消散
var tween = create_tween()
tween.tween_property(material, "shader_parameter/dissolve_value", 1.0, 1.5)
