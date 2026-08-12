### godot note (pck)
視差省MB
勾索,傳送門槍,coin〉升級,爬墻,動作設計：技能普攻/強化/大招,無縫第三人稱視角傳送門 

### 遊戲經驗
```
沒有遊戲經驗:不要動作遊戲>劇情+玩法+美術>ui+bgm>demo玩法1個月>開發:宣發>PV不要Logo=5:5 >手遊 (次要)簡單化+同質化 >itch 
```

先建[玩法](#玩法) 再填[美術](#美術)<br><a href="https://github.com/pwhoae/Artbank/blob/main/godot/%E5%B8%B8%E7%94%A8coding.md">常用coding.md</a>
```
_工具箱
    - _[0 場景 (tscn)]
    - _[1 玩法 GDScript (gd)]
    - _[2 美術 (png)]
    - _[3 音頻 (mp3)]
    - _[4 影片 ]
    - _[5 資源 (tres)]
    - _[9 成品]
```
<details><summary>參考書<a href="https://github.com/wangshucheng/godot-engine-book/tree/main/articles"> website</a></summary>
https://github.com/pwhoae/Artbank/blob/main/godot/readme.md
	
| | 对应篇章 | 特別章 | 
|------|---------|---------|
| 基本 |1-10| |  
| 鞏固基本 |53-56,60|建議看完1-10深化,<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/appendix-b-gdscript-reference.md">GDScript 快速参考</a>, <a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/appendix-c-unity-migration.md">Unity vs Godot</a>|  
| 物理系统 |23-32|<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/31-destruction-systems.md">31:破坏系统</a> |
| 动画系统 |37-44|<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/44-skeletal-animation.md">44:骨骼动画</a> |
| audio系统 |45-48|<a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/46-audio-player.md">46:音频播放器</a> |
| network系统 |49-52,57,58|沒看懂|
|------次要------|
| 渲染系统 |11-22|  |
|性能分析|| var start = Time.get_ticks_usec() <br> var elapsed = Time.get_ticks_usec() - start print("耗时：", elapsed / 1000.0, " ms") <br> # 调用栈 print_stack() <br><a href="https://github.com/wangshucheng/godot-engine-book/blob/main/articles/appendix-d-performance-checklist.md">附录 D：性能优化清单</a> |
|Other||https://reimenn.github.io/MyGDSciprtBook/|
</details>

<a id="玩法"></a>先建玩法
### 線性公式
```
1.属性系统 
通用/单位属性：生命值、攻击力、防御力等角色基础属性。 
技能属性：专门作用于技能标签的属性:基础属性：技能等级、释放条件、资源消耗、冷却时间（CD）、运行时生成的技能数据。 
2. Buff 系统与触发系统 
Buff 系统：管理单位身上的持续效果，包含叠层、Buff 等级、属性修改、周期效果以及运行时参数传入。 
触发系统：将一次触发拆解为 事件 → 条件 → 目标 → 效果。 
3. 伤害结算
技能命中目标后触发，统一处理攻击属性、伤害类型、暴击率、抗性、穿透、伤害加成等计算逻辑。 

## 進入迷宮>獲得新道具>擊敗 Boss>開啟新地圖 ## 被動遊戲 vs 主動遊戲
## 遠路+直接 ## 找开源demo>做遊戲:miss hit/鏡像密碼

```
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E6%8F%90%E7%A4%BA%E6%89%8B%E6%B3%95%E7%8D%8E%E5%8B%B5.jpeg" width="300" height="300"></img>
## Tsun gd用蛇形
### GD順序
```
#帕斯卡 class_name [ClassName]  /signal [HitPlayer]
#蛇形 @export_category("Player Setting")/@export_group("Player")/@export>@ready>var [蛇形 player_score]/func [ player_score]
```
### 0.0 基本
```
### 避免硬編碼
# export导出变量（在编辑器中可见） [@export var speed: float = 5.0]
# ctrl:@onready 节点引用（通过@onready 自动获取） [@onready var camera = $Camera3D]
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
var date=Time.get_datetime_string_from_system() #get_datetime_string/get_datetime_dict/get_unix_time 時間
var split_date=date.split('T')	#split 分開
text=str(", ".join(split_date))	#join 組合

### 打印调试
print_rich("[color=red]Error[/color]")
assert(value > 0, "Value must be positive")/#push_warning("Warning message")/#push_error("Error message")
```

### 0. signal
```
|player.gd|another.gd|
|1 signal start <br> 2 start.emit() #发射信号|@export player <br> 3 player.start.connect(func) #only start.emit()>turn on the func |
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

### tilemap>terrain:https://wareya.github.io/webtyler/

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
```
2. 解決方案：串流技術（Streaming）與世界重塑
串流技術的運作：技術負責人 Adam Fowler 提出了解決方案。遊戲將地圖拆分為數千個小區域（Sectors），並在玩家周圍設定一個隱形的方形區域。只有該區域內所需的模型與貼圖才會被載入記憶體。當玩家移動時，前方新區域的資產會被讀取，後方離開的資產則會被默默刪除，像一個隨玩家移動的「視窗」。
層次細節（LOD）解決破圖問題：如果只載入身邊的物件，遠處世界會顯得憑空出現（Pop-in）。因此，遊戲在遠處只會載入大型結構（如高樓、橋樑、吊車），且使用的是低多邊形（Low poly）模型與低解析度貼圖。當玩家靠近時，高畫質模型才會無縫淡入替換，藉此省下大量記憶體。
```
```
镜子魔术
经典的“双子房间”：由于镜子在实时渲染中极其消耗资源，游戏采用了一个古老但有效的技巧（类似于《超级马里奥64》）：所谓的镜子其实是一扇透明的窗户，窗户后面是一间一模一样的镜像房间。镜子里玩家看到的是 V 的克隆体和另一个杰克，而当杰克把手搭在 V 肩上时，杰克实际上在瞬间从“镜像房间”传送回了“现实房间”。
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
	scroll+=SCROLL_SPEED;if scroll>=1000:scroll=0;
	background.position.x=-scroll	
```
### 移除动作
```
func remove_action(action_name: String):
    if InputMap.has_action(action_name):InputMap.erase_action(action_name)
```
### 5.3 输入灵敏度
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
<a id="美術"></a>
生成概念圖:**通过不同颜色定义不同的场景逻辑与规则**

- **白色：可通行区域，角色可在该空间内自由移动。** 
- **黑/藍色：物理阻挡区，定义角色无法进入的碰撞边界。** 
- **绿色：前景遮挡层，营造镂空与前后空间层次感。 **
- **红色：定义场景的出入口。** 
### 美術
```
roughness=0,toon,抖动輪廓
卡通着色（Toon shading）,菲涅尔效应（Fresnel）

godot lod （Level of Detail，細節級別）怎麼設定
“影视地编”与“游戏地编”
影视地编：只服务于固定摄像机镜头，只需保证单镜头内不穿帮，几乎不用考虑性能、灯光数量或模型精度限制。 
游戏地编：服务于玩家全方位自由探索与交互。必须具备全局思维，且需要为玩法和性能让步（使用高低模、模块化、Trim Sheet、Tiling 贴图等管线工具来优化性能与包体）。 
用原画思维替代 3D 视角思维
常见错误：过分拘泥于“一张静态画面的美观”，忽略了三维空间的整体连贯性与空间感。 
正确做法：将原画思维转变为 3D 关卡美术视角，哪怕只是制作一个很小的场景 Demo，也要保证空间结构的合理性和全角度的美观与连贯。 

```
美術=為什麼喜歡這種東西>有梗/場景互動小道具/地圖互動/看到門持key 配套

<hr>
UI:Ipad/iphone show setting/音效/粒子/字體<br>
tween/shader>好麻煩 不考慮手寫 用ai寫<br>
像素風設定 Texture → Filter 設為 Nearest/Project → Rendering → Pixel Snap


