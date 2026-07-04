### 3D Notes
```
### 思考方向
收藏 property (position,rotation,scale,shape) Collision3D常用
1.場景光照+環境光
2.Player+camera (springarm)
3.static (mesh>網格>static>3角網格)/interactive item (聚光燈{spotlight}+光源{omnienergy}+area3D)[(glb,gltf)]
4.move>animationplayer>animationtree (use editable to achieve animation>player{velocity.length()}.xfadetime) 3D 美术资产 (gltf,glb)* Godot 也支持直接将 Blender 的 `.blend` 文件保存在项目目录中（其后台会自动调用 Blender 导出为 GLTF）。
5.death zone>worldboundary
X0.UI>CanvasLayer>Label
X1.material>DiffuseMode和Specular Mode都改成Toon+roughness要拉到1>toon 3渲2
X2.gpuparticle>cpuparticle
XL:gui>playerdata>autoload>🔹 GameManager（建議做成單例）>控制分數/控制關卡/常用 Node 類型
```
```
運用 RayCast2D（射線偵測） 向左、向右發射隱形射線，當偵測到牆壁碰撞時，腳本會自動將移動方向（direction）乘以 -1，並切換 flip_h 水平翻轉精靈圖，達成自動無盡巡邏。
```
<img src="https://github.com/pwhoae/Artbank/blob/main/godot/godot3d_1.PNG" width="500" height="500"></img>
<img src="https://github.com/pwhoae/Artbank/blob/main/godot/editable.jpeg" width="500" height="500"></img>

### 次研究:粒子系统 【Godot进阶教学】做出你的第一个3D游戏：粒子系统的运用
```
process material/standard3d albedo/time amount spawn出生/direction sparation/align y/accel +爆炸
```

### 2D Notes
```
#帕斯卡 class_name [ClassName]  /signal [HitPlayer]
#蛇形 @export_category("Player Setting")/@export_group("Player")/@export>@ready>var [蛇形 player_score]/func [ player_score]
# enum [enum Phase { Fighting, Win, Resetting }]
await get_tree().create_timer(2).timeout # 等待時間 
# 显示系统对话框 OS.alert("message")
clamp
lerp
tween

### 時間
var date=Time.get_datetime_string_from_system() #get_datetime_string/get_datetime_dict/get_unix_time 時間
var split_date=date.split('T')	#split 分開
text=str(", ".join(split_date))	#join 組合

### 打印调试
print_rich("[color=red]Error[/color]")
assert(value > 0, "Value must be positive")/#push_warning("Warning message")/#push_error("Error message")
# 键盘输入 [if Input.is_key_pressed(KEY_SPACE)]
# 鼠标输入 [if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)]
# 游戏手柄 [if Input.is_joy_button_pressed(0, JOY_BUTTON_A)]/# 触摸输入[if Input.is_action_pressed]("touch"):

# 方式 1：通过路径UID [get_tree().change_scene_to_file("res://levels/level_2.tscn")]
[var enemy = scene.instantiate()][add_child(enemy)]
[get_tree().reload_current_scene()][get_tree().quit()]
# 添加节点到组 [add_to_group("enemies")]
# 从组移除 [remove_from_group("enemies")]
# 检查是否在组中 [if is_in_group("enemies"):]
# 获取组中所有节点 [var enemies = get_tree().get_nodes_in_group("enemies")]
# 调用组中所有节点的方法 [get_tree().call_group("enemies", "take_damage", 10)]
# 连接到组中所有节点 [get_tree().connect("node_added", self, "_on_node_added")]
var direction_to_player=position.direction_to(player.position) lerp(current_speed, target_speed, lerp_weight * delta)


```
