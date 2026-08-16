互動式動態霧氣
idea:偽3d效果,彩虹字,浮動,互動流體模擬,卡反絕區零火鍋,3D 掃雷
瘋狂鴿子3d /滾動的天空/ 號角保齡球/ 閃避球/ 滑雪/ 美夢zzz/ TNT弹道轨迹
render texture=subviewer
場景要找：中世界/熱帶島/紐約/地鐵 


### godot note (pck)

開發技巧
```
1. 沒有遊戲經驗:不要動作遊戲>劇情+玩法+美術>ui+bgm>demo玩法1個月>開發:宣發>PV不要Logo=5:5 >手遊 (次要)簡單化+同質化 >itch 
2. 視差省MB,使用低多邊形（Low poly）模型與低解析度貼圖;減法,別做镜子(魔术)[3d要加入場景光照+環境光+camera]
輕量級 Low-Poly 3D 模型庫：poly.pizza (Quaternius)
不要重复造轮子：合理利用引擎资源商

貼圖:https://ambientcg.com/<br>
地编參考:https://www.artstation.com/artwork/dyk3nQ
解刨示意圖:tripoai https://studio.tripo3d.ai?invite_code=O0E0Z6
csg:operation,union,subtraction

把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格

3. tscn | gdscript | assets (audio,png,glb,)>核心痛點：為什麼不該為每把武器建一個獨立場景（Scene）？
4. godot lod （Level of Detail，細節級別）怎麼設定
5. 收藏 property (position,rotation,scale,shape) Collision3D常用>安全边距（Margin）至 0.3 米以防止穿墙。
AtlasTexture 拼圖
filedialog:玩家upload file
```

### 思考方向
```
DisplayServer.clipboard_set("要複製的內容")
marker2d/3d
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


先建[玩法](#玩法) 再填[美術](#美術)<br><a href="https://github.com/pwhoae/Artbank/blob/main/godot/%E5%B8%B8%E7%94%A8coding.md">常用coding.md</a>


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
勾索,傳送門槍,coin〉升級,爬墻,動作設計：技能普攻/強化/大招,無縫第三人稱視角傳送門 
掛勾
robot核心就是key
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
<hr>

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
<details><summary>次要</summary> 
	
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
------------------------------------------------
<details><summary>func記</summary>
	
### 無盡scroll
```
只動背景>背景返回
var scroll;const SCROLL_SPEED:int =4;@onready var background=$Background
func _scroll():
	scroll+=SCROLL_SPEED;if scroll>=1000:scroll=0;background.position.x=-scroll	
```
</details>

<hr>

<a id="美術"></a>
### 美術
**美術=為什麼喜歡這種東西>有梗**
**思考遊戲什麼需要camera展示/什麼時候用AE**

## 2d/3d 視覺與渲染設定
```
卡通着色（Toon shading）,菲涅尔效应（Fresnel）,roughness=0,toon,抖动輪廓
像素風設定 Texture → Filter 設為 Nearest/Project → Rendering → Pixel Snap
```
## 2d/3d 地圖
```
通过不同颜色定义不同的场景逻辑与规则 (白,黑,绿,红)
**白色：可通行区域，角色可在该空间内自由移动。 ;黑/藍色：物理阻挡区，定义角色无法进入的碰撞边界。;绿色：前景遮挡层，营造镂空与前后空间层次感。;红色：定义场景的出入口。
**
“影视地编”与“游戏地编”
影视地编：只服务于固定摄像机镜头，只需保证单镜头内不穿帮，几乎不用考虑性能、灯光数量或模型精度限制。 
游戏地编：服务于玩家全方位自由探索与交互。必须具备全局思维，且需要为玩法和性能让步（使用高低模、模块化、Trim Sheet、Tiling 贴图等管线工具来优化性能与包体）。 
用原画思维替代 3D 视角思维
常见错误：过分拘泥于“一张静态画面的美观”，忽略了三维空间的整体连贯性与空间感。 
正确做法：将原画思维转变为 3D 关卡美术视角，哪怕只是制作一个很小的场景 Demo，也要保证空间结构的合理性和全角度的美观与连贯。

場景互動小道具/地圖互動/看到門持key 配套
```
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%9C%BA%E6%99%AF%E9%80%BB%E8%BE%91%E9%A2%9C%E8%89%B2%E7%BC%96%E7%A0%81%E8%AE%BE%E8%AE%A1%E6%8C%87%E5%8D%97.png" width="300" height="300"></img>

### UI
UI 与 3D 元素的结合<br>
UI:Ipad/iphone show setting/音效/粒子/字體<br>

### Tween/Shader
用ai寫
```
#ShaderMaterial
var material = ShaderMaterial.new()
```
<hr>
