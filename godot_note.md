# godot note
```
GD順序
class_name
signal
@export
@ready
var
```
camera
jump >ray for slideing 墻跳滑牆
tilemap>terrain

coin/box/spike interactive
gui>playerdata>autoload

🔹 GameManager（建議做成單例）>控制分數/控制關卡/常用 Node 類型
UI>Camera2D/CanvasLayer /Label
像素風設定 Texture → Filter 設為 Nearest/Project → Rendering → Pixel Snap
q彈邦布/以骸/草莓巴菲
掃雷/藥水 化衣
streak連勝
滑板跑酷
pck exe
```
31 destruction效果 *44 骨綁**45 music player ** 46完整musicplayer
jolt要下載 24奇怪專案參考 26材質參考 27（28）骨架參考（車）29/30 流體/衣服 37-39 動畫 40/41/42/43 動畫example/曲線/粒子/動畫狀態機 47/48 mixer effect
49-52 network
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
