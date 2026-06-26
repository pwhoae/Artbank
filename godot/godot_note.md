# godot note (pck)看到53
<details><summary>參考書<a href="https://github.com/wangshucheng/godot-engine-book/tree/main/articles"> website</a></summary>
	
| | 对应篇章 | 特別章 | 
|------|---------|---------|
| 基本 |1-10| |  
| 物理系统 |23-32|<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/31-destruction-systems.md">31:破坏系统</a> |
| 动画系统 |37-44|<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/44-skeletal-animation.md">44:骨骼动画</a> |
| audio系统 |45-48|<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/46-audio-player.md">46:音频播放器</a> |
| network系统 |49-52|沒看懂|
||次要||
| 渲染系统 |11-22|  |
||||
| GDScript | `modules/gdscript/` | 第 23-30 篇 |
| UI 系统 | `scene/gui/` | 第 43-47 篇 |
</details>

GD順序
```
class_name [帕斯卡 ClassName]  
signal [帕斯卡 HitPlayer]
###
@export_category("Player Setting")
@export_group("Player")
@export>@ready>var [蛇形 player_score]
func [蛇形 player_score]
```
idea:
```
滑板跑酷,streak連勝,草莓巴菲,掃雷
```
camera
jump >ray for slideing 墻跳滑牆
gui>playerdata>autoload>🔹 GameManager（建議做成單例）>控制分數/控制關卡/常用 Node 類型
UI>Camera2D/CanvasLayer /Label
像素風設定 Texture → Filter 設為 Nearest/Project → Rendering → Pixel Snap
```
《笨办法学Python（第三版） 做游戏书籍
#https://github.com/jess-hammer/dual-grid-tilemap-system-godot
找目的+目標 確立成功 拆分/組合
```
### 0.0 基本

```
# export导出变量（在编辑器中可见） [@export var speed: float = 5.0]
# @onready 节点引用（通过@onready 自动获取） [@onready var camera = $Camera3D]
# enum [enum Phase { Fighting, Win, Resetting }]
# 等待時間 [await get_tree().create_timer(2).timeout]
# 使用 @preload 在编译时加载{會慢} [@preload("res://player.png")]
# 显示系统对话框 OS.alert("message")  
```
### 0. signal
用法
``` player.gd
1 signal start
2 start.emit() #发射信号
------------------------
another.gd
@export player
3 player.start.connect(func) #only start.emit()>turn on the func 
```
```
# 信号定义 [signal player_died]
# 发射信号 [health_changed.emit(50)]
# 连接信号 [$HealthComponent.health_changed.connect(_on_health_changed{here is func})]
# 断开连接 [$HealthComponent.health_changed.disconnect(_on_health_changed)]
------------------------
# 普通连接 [signal.connect(handler)]
# 一次性连接/下一帧执行（触发后自动断开）[signal.connect(handler, CONNECT_ONE_SHOT)]/[signal.connect(handler, CONNECT_DEFERRED)]
??? # 弱引用（不阻止对象释放）]signal.connect(handler, CONNECT_REFERENCE_COUNTED)]
??? disconnet
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
# 加载音频流 [if stream_path != "": var stream = load(stream_path)]
# 播放/停止/暂停音频 [play()/stop()/pause()]
# 检查是否正在播放/获取播放位置 [is_playing()/get_playback_position()]
```
<details><summary>次要</summary>

### tilemap>terrain 
```
+地圖html
```
###  interactive
```
coin/box/spike
```

### 0. OS
```
# "Windows" [OS.get_name()]
# 可执行文件路径 print(OS.get_executable_path())  
# 用户数据目录 print(OS.get_user_data_dir())  
??? # 复制到剪贴板 OS.set_clipboard("copy text")  
# 请求权限（移动） OS.request_permission("camera")  

```
### 0. ResourceLoader
```
# 手动卸载 [ResourceLoader.unload("res://large_texture.png") ]
# 卸载所有未使用的资源 [ResourceQueue.unload_unused_resources()]
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
### 0. Json DisplayServer
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
# 光源属性 3D
var light = DirectionalLight3D.new()
light.light_color = Color(1, 0.9, 0.8)  # 暖色阳光
light.light_energy = 1.5  # 光照强度
light.shadow_enabled = true  # 启用阴影
light.shadow_max_distance = 100  # 阴影最大距离

# 阴影设置 3D
var light = DirectionalLight3D.new()
light.shadow_enabled = true
light.shadow_max_distance = 50  # 减少阴影距离
light.shadow_orthogonal_size = 20  # 正交大小
light.shadow_bias = 0.01  # 阴影偏移

#ShaderMaterial
var material = ShaderMaterial.new()
material.shader = load("res://shaders/custom.gdshader")
material.set_shader_parameter("albedo", Color.RED)
material.set_shader_parameter("roughness", 0.5)
```
</details>
------------------------------------------------
<details><summary>func記</summary>
var direction_to_player=position.direction_to(player.position)
lerp(current_speed, target_speed, lerp_weight * delta)
	
### 無盡scroll
```
var scroll
const SCROLL_SPEED:int =4
@onready var background=$Background

func _scroll():
	scroll+=SCROLL_SPEED
	if scroll>=1000:
		scroll=0
	background.position.x=-scroll	
```
func remove_action(action_name: String):
    # 移除动作
    if InputMap.has_action(action_name):
        InputMap.erase_action(action_name)
### 5.3 输入灵敏度

```gdscript
# 输入灵敏度
class_name InputSensitivity

extends Node

@export var mouse_sensitivity: float = 1.0
@export var gamepad_sensitivity: float = 1.0
@export var axis_deadzone: float = 0.1

func _ready():
    load_sensitivity_settings()

func load_sensitivity_settings():
    # 加载灵敏度设置
    var config = ConfigFile.new()
    var err = config.load("user://input_sensitivity.ini")
    
    if err == OK:
        mouse_sensitivity = config.get_value("sensitivity", "mouse", 1.0)
        gamepad_sensitivity = config.get_value("sensitivity", "gamepad", 1.0)
        axis_deadzone = config.get_value("deadzone", "axis", 0.1)

func save_sensitivity_settings():
    # 保存灵敏度设置
    var config = ConfigFile.new()
    config.set_value("sensitivity", "mouse", mouse_sensitivity)
    config.set_value("sensitivity", "gamepad", gamepad_sensitivity)
    config.set_value("deadzone", "axis", axis_deadzone)
    config.save("user://input_sensitivity.ini")

func set_mouse_sensitivity(sensitivity: float):
    mouse_sensitivity = clamp(sensitivity, 0.1, 5.0)

func set_gamepad_sensitivity(sensitivity: float):
    gamepad_sensitivity = clamp(sensitivity, 0.1, 5.0)

func set_axis_deadzone(zone: float):
    axis_deadzone = clamp(zone, 0.0, 0.5)

func get_mouse_sensitivity() -> float:
    return mouse_sensitivity

func get_gamepad_sensitivity() -> float:
    return gamepad_sensitivity

func get_axis_deadzone() -> float:
    return axis_deadzone

func apply_to_axis_value(value: float) -> float:
    # 应用灵敏度到轴值
    if abs(value) < axis_deadzone:
        return 0.0
    
    # 应用死区
    var adjusted = (abs(value) - axis_deadzone) / (1.0 - axis_deadzone)
    adjusted = clamp(adjusted, 0.0, 1.0)
    
    # 应用灵敏度
    return sign(value) * adjusted * gamepad_sensitivity
```

# 工厂模式
class_name FactoryPattern

extends Node

# 简单工厂
static func create_enemy(type: String) -> Node:
    var enemy: Node
    match type:
        "basic":
            enemy = BasicEnemy.new()
        "advanced":
            enemy = AdvancedEnemy.new()
        "boss":
            enemy = BossEnemy.new()
    return enemy

# 工厂方法
func create_product(product_type: String) -> Object:
    match product_type:
        "weapon":
            return create_weapon()
        "armor":
            return create_armor()
        "potion":
            return create_potion()
    return null

func create_weapon() -> Object:
    var weapon = Node.new()
    weapon.name = "Weapon"
    return weapon

func create_armor() -> Object:
    var armor = Node.new()
    armor.name = "Armor"
    return armor

func create_potion() -> Object:
    var potion = Node.new()
    potion.name = "Potion"
    return potion

# 抽象工厂
interface ItemFactory:
    func create_weapon() -> Object
    func create_armor() -> Object

class BasicItemFactory:
    extends RefCounted
    
    func create_weapon() -> Object:
        var weapon = Node.new()
        weapon.name = "BasicWeapon"
        return weapon
    
    func create_armor() -> Object:
        var armor = Node.new()
        armor.name = "BasicArmor"
        return armor

class AdvancedItemFactory:
    extends RefCounted
    
    func create_weapon() -> Object:
        var weapon = Node.new()
        weapon.name = "AdvancedWeapon"
        return weapon
    
    func create_armor() -> Object:
        var armor = Node.new()
        armor.name = "AdvancedArmor"
        return armor


</details>


土豆兄弟Brotato Roguelike 生存者
穹顶守护者 Dome Keeper 生存者
>???| **Estabash** | 动作 | Steam 热门 | 2023 |

**核心模块源码位置**（后续文章会深入分析）：

| 模块 | 源码路径 | 对应文章 |
|------|---------|---------|
| 对象系统 | `core/object/` | 第 5 篇 
| 渲染系统 | `servers/rendering/` | 第 11-22 篇 |
| GDScript | `modules/gdscript/` | 第 23-30 篇 |
| 动画系统 | `scene/animation/` | 第 31-36 篇 |
| 物理系统 | `servers/physics/` | 第 37-42 篇 |
| UI 系统 | `scene/gui/` | 第 43-47 篇 |
