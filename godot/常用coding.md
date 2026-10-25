<details>
<summary>
	### GDScript ->避免硬編碼->用var export
</summary>
	
### GDScript ->避免硬編碼->用var export
	
```
#帕斯卡 class_name [ClassName]  /signal [HitPlayer]
#蛇形 @export_category("Player Setting")/@export_group("Player")/@export>@ready>var [蛇形 player_score]/func [ player_score]
```
### 0.0 基本
```
# export导出变量（在编辑器中可见） [@export var speed: float = 5.0]
# ctrl: @onready 节点引用（通过@onready 自动获取） [@onready var camera = $Camera3D]
# enum [enum Phase { Fighting, Win, Resetting }]
# 使用 @preload 在编译时加载{會慢} [@preload("res://player.png")]
# 显示系统对话框 OS.alert("message")
await get_tree().create_timer(2).timeout # 等待時間 

### 輔助func
clamp
lerp/lerp_angle
randi/randf
position.direction_to(player.position)
match type

### 時間
var date=Time.get_datetime_string_from_system() #get_datetime_string/get_datetime_dict/get_unix_time 時間;var split_date=date.split('T')	#split 分開;text=str(", ".join(split_date))	#join 組合

### 打印调试
print_rich("[color=red]Error[/color]");assert(value > 0, "Value must be positive")/#push_warning("Warning message")/#push_error("Error message")
```

### 0. signal
```
|player.gd|another.gd|
|1 signal start <br> 2 start.emit() #发射信号|@export player <br> 3 player.start.connect(func) #only start.emit()>turn on the func |
# 信号定义 [signal player_died]
# 发射信号 [health_changed.emit(50)]
# 连接信号 [$HealthComponent.health_changed.connect(_on_health_changed{here is func})]
# 断开连接 [$HealthComponent.health_changed.disconnect(_on_health_changed)]
```
### 0. Input 53 input system
inputeventmouse/mouse click gui
```
# 键盘输入 [if Input.is_key_pressed(KEY_SPACE)]
# 鼠标输入 [if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)]
# 游戏手柄 [if Input.is_joy_button_pressed(0, JOY_BUTTON_A)]/# 触摸输入[if Input.is_action_pressed]("touch"):
```
### 0. scene
```
# 方式 1：通过路径 [get_tree().change_scene_to_file("res://levels/level_2.tscn")]
# 方式 2：通过资源 [var level_2 = load("res://levels/level_2.tscn")]>[get_tree().change_scene_to_packed(level_2)]
[var enemy = scene.instantiate()][add_child(enemy)]
[get_tree().reload_current_scene()][get_tree().quit()]
```
### 0. node
```
# 创建节点 [var enemy = Enemy.new()]
# 添加到父节点 [add_child(enemy)]
# 从父节点移除 [remove_child(enemy)]
# 获取父节点 [var parent = get_parent()] [var children = get_children()]
# 获取子节点数量 [var count = get_child_count()] [var child = get_child(0)]
# 有func [if node.has_method("shoot"):]/# 获取方法列表 [var methods = node.get_method_list()]/# 获取属性列表 [var props = node.get_property_list()]
```
### 0. Group
```
# 添加节点到组 [add_to_group("enemies")]
# 从组移除 [remove_from_group("enemies")]
# 检查是否在组中 [if is_in_group("enemies"):]
# 获取组中所有节点 [var enemies = get_tree().get_nodes_in_group("enemies")]
# 调用组中所有节点的方法 [get_tree().call_group("enemies", "take_damage", 10)]
# 连接到组中所有节点 [get_tree().connect("node_added", self, "_on_node_added")]
```
### 0. FileAccess 读写
```
# 读取文件
var file = FileAccess.open("res://data.txt", FileAccess.READ)
var content = file.get_as_text()
file.close()

# 写入文件
var file = FileAccess.open("user://save.dat", FileAccess.WRITE)
file.store_string("save data")
file.close()
# 检查文件是否存在 [if FileAccess.file_exists("res://data.txt")]
```
### 0. AudioStreamPlayer2D 音频
```
# 加载音频流 [if stream_path != "": var stream = load(stream_path)];# 播放/停止/暂停音频 [play()/stop()/pause()];# 检查是否正在播放/获取播放位置 [is_playing()/get_playback_position()]
```
	
### tilemap>terrain: https://wareya.github.io/webtyler/

### 0. OS
```
# "Windows" [OS.get_name()];# 可执行文件路径 print(OS.get_executable_path());# 用户数据目录 print(OS.get_user_data_dir());# 请求权限（移动） OS.request_permission("camera")  
```
### 0. ResourceLoader
```
# 手动卸载 [ResourceLoader.unload("res://large_texture.png") ];# 卸载所有未使用的资源 [ResourceQueue.unload_unused_resources()]
```
### 0. Json
```
# 序列化为 JSON
func save_to_json(path: String) -> Error: 
    var data = {
        "name": name,
    }
    ***var json_string = JSON.stringify(data, "  ")
    return OK

# 从 JSON 反序列化
```
### 0. DisplayServer
```gdscript
# 窗口管理
DisplayServer.window_set_title("My Game")
DisplayServer.window_set_size(Vector2i(1280, 720))
DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

# 屏幕信息
var screen_count = DisplayServer.get_screen_count()
var screen_size = DisplayServer.screen_get_size()

# 键盘
if DisplayServer.has_feature(DisplayServer.FEATURE_VIRTUAL_KEYBOARD):
    DisplayServer.virtual_keyboard_show()
```
### 0. 渲染 RenderingServer
```
var light = DirectionalLight3D.new() # 光源属性 3D
light.light_color = Color(1, 0.9, 0.8)  # 暖色阳光
light.light_energy = 1.5  # 光照强度
light.shadow_enabled = true  # 启用阴影
light.shadow_max_distance = 100  # 阴影最大距离

var light = DirectionalLight3D.new() # 阴影设置 3D
light.shadow_enabled = true
light.shadow_max_distance = 50  # 减少阴影距离
light.shadow_orthogonal_size = 20  # 正交大小
light.shadow_bias = 0.01  # 阴影偏移
```
### 输入灵敏度
```gdscript
class_name InputSensitivity
func _ready():
    load_sensitivity_settings()

# 加载灵敏度设置
func load_sensitivity_settings():
    var config = ConfigFile.new()
    var err = config.load("user://input_sensitivity.ini")
    
    if err == OK:mouse_sensitivity = config.get_value("sensitivity", "mouse", 1.0);gamepad_sensitivity = config.get_value("sensitivity", "gamepad", 1.0);axis_deadzone = config.get_value("deadzone", "axis", 0.1);

func save_sensitivity_settings():
    # 保存灵敏度设置
    var config = ConfigFile.new()
    config.set_value("sensitivity", "mouse", mouse_sensitivity);config.set_value("sensitivity", "gamepad", gamepad_sensitivity);config.set_value("deadzone", "axis", axis_deadzone);
    config.save("user://input_sensitivity.ini")

func set_sensitivity(sensitivity: float):
    mouse_sensitivity = clamp(sensitivity, 0.1, 5.0)
    gamepad_sensitivity = clamp(sensitivity, 0.1, 5.0)
    axis_deadzone = clamp(zone, 0.0, 0.5)

func get_sensitivity() -> float:
    return mouse_sensitivity;return gamepad_sensitivity;return axis_deadzone;

# 应用灵敏度到轴值
func apply_to_axis_value(value: float) -> float:
    if abs(value) < axis_deadzone:return 0.0;
	var adjusted = (abs(value) - axis_deadzone) / (1.0 - axis_deadzone);adjusted = clamp(adjusted, 0.0, 1.0);return sign(value) * adjusted * gamepad_sensitivity;# 应用灵敏度 
```
# 工厂模式
```
class_name FactoryPattern
# 简单工厂
static func create_enemy(type: String) -> Node:
    var enemy: Node
    match type:"basic":enemy = BasicEnemy.new();"advanced":enemy = AdvancedEnemy.new();"boss":enemy = BossEnemy.new();return enemy;

# 工厂方法
func create_product(product_type: String) -> Object:
    match product_type: "weapon":return create_weapon();"armor":return create_armor();"potion":return create_potion();return null;

# 抽象工厂
interface ItemFactory:
    func create_weapon() -> Object
    func create_armor() -> Object
```
</details>
### 思考方向
1. filedialog:玩家upload file
2. DisplayServer.clipboard_set("要複製的內容")
3. marker2d/3d
4. Player+camera (springarm) Camera3D：并勾选 Current 使其激活>camera飛過去地圖演示>tween
5. static (mesh>網格>static>3角網格)/interactive item (聚光燈{spotlight}+光源{omnienergy}+area3D)[(glb,gltf)]
6. move>animationplayer>animationtree (use editable to achieve animation>player{velocity.length()}.xfadetime)
7. death zone>worldboundary
8. editable 取得node
9. gui>playerdata>autoload>GameManager（建議做成單例）>控制分數/控制關卡/常用 Node 類型
10. [3d要加入場景光照+環境光+camera]
11. 8. mesh.create_convex_shape（）給static+collsion|碰撞体命名规范：模型重命名后缀带 -col（如 ground_col、wall_col），导入 Godot 时系统会自动生成 StaticBody3D 静态碰撞体。在 Action Editor 中创建 default（默认姿态）、idle_loop（待机循环）和 run_loop（跑步循环）动画。  
10. 动态天花板算法:代码自动化实现：运行时在 BaseRoom 脚本中过滤出所有地面/坑洞等无天花板网格的 ID 列表。  使用 get_used_cells() 遍历当前房间已被绘制的坐标。  若坐标处的单元格需要天花板，则通过代码在 ceilings 网格地图的对应三维坐标动态绘制天花板。
12. 
<hr>
lerp:從 A 點移動到 B 點

映射比例 remap(value, istart, istop, ostart, ostop)
```
value：目前你要轉換的數值。
istart / istop：原本舊範圍的「起點」與「終點」（Input start/stop）。
ostart / ostop：想要轉換過去新範圍的「起點」與「終點」（Output start/stop）。

1. 手电筒电池电量与灯光强度联动
逻辑：随着电池电量从 max_battery 消耗至 0，通过 remap(battery, max_battery, 0, max_energy, 0) 动态调整 2D 点光源（Light2D）的强度。 

2. 经验值进度条适配
逻辑：人物升级后所需经验值呈指数增长（如递增 25%），使用 remap(current_exp, 0, required_exp, 0, bar.max_value) 将经验自动映射到 UI 进度条。 

3. 移动速度与脚步声音调（Pitch）变化
逻辑：根据角色的移动速度 X 轴绝对值 abs(velocity.x)，在 0 到 max_speed 范围内，映射到音效播放器（AudioStreamPlayer）的 pitch_scale 范围（如 0.8 至 1.3）。 
```
### 3D Notes
tools:
輕量級 Low-Poly 3D 模型庫：poly.pizza (Quaternius)<br>
貼圖:https://ambientcg.com/<br>
地编參考:https://www.artstation.com/artwork/dyk3nQ
解刨示意圖:tripoai

tripoai 2.5
https://studio.tripo3d.ai?invite_code=O0E0Z6
```
把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格
```
```
### 思考方向
marker2d/3d
UI 与 3D 元素的结合
csg:operation,union,subtraction
收藏 property (position,rotation,scale,shape) Collision3D常用>安全边距（Margin）至 0.3 米以防止穿墙。
>核心痛點：為什麼不該為每把武器建一個獨立場景（Scene）？
1.場景光照+環境光
2.Player+camera (springarm) Camera3D：并勾选 Current 使其激活>camera飛過去地圖演示>tween
3.static (mesh>網格>static>3角網格)/interactive item (聚光燈{spotlight}+光源{omnienergy}+area3D)[(glb,gltf)]
4.move>animationplayer>animationtree (use editable to achieve animation>player{velocity.length()}.xfadetime) 3D 美术资产 (gltf,glb)* Godot 也支持直接将 Blender 的 `.blend` 文件保存在项目目录中（其后台会自动调用 Blender 导出为 GLTF）。
5.death zone>worldboundary

gripmap 場地
X0.UI>CanvasLayer>Label
X1.material>DiffuseMode和Specular Mode都改成Toon+roughness要拉到1>toon 3渲2
X2.gpuparticle(process material)>cpuparticle
XL:gui>playerdata>autoload>🔹 GameManager（建議做成單例）>控制分數/控制關卡/常用 Node 類型
```

<img src="https://github.com/pwhoae/Artbank/blob/main/godot/godot3d_1.PNG" width="100" height="100"></img>
<img src="https://github.com/pwhoae/Artbank/blob/main/godot/editable.jpeg" width="100" height="100"></img>

AtlasTexture 拼圖
filedialog:玩家upload file
tilemap》collision layer

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
RayCast2D

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
