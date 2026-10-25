**必須清楚回答「我到底為什麼要開發這款遊戲？我最想從中獲得什麼？」 唯獨「開發初衷」是無法繞過的根本動力。**
<hr>
创意就是組合

### 流程:認證玩法->確立美術>均衡性能+美術+細節
需要策劃案 vs. Demo 策劃案決定上限
<hr>

### 玩法靈感 
<hr>

### 技巧
1. 不要重复造轮子>Assets
2. [視差省MB+Low poly(Quaternius)+與低解析度貼圖]
3. tscn | gdscript **GD 名Tscn+number+_nodename** | assets (audio,png,glb,)
4. 收藏 property (position,rotation,scale,shape) Collision3D常用>Margin以防止穿墙。
5. tripoAI+地編
```
把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格
```






### Common function
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
<hr>
<details>
	<summary> ###  游戏属性系统</summary>

1. 属性系统
类型划分：属性（生命、攻击、防御）与专门作用于技能标签的技能属性。 
数值分层：支持“基础值 + 额外值 + 百分比加成 = 最终值”的计算链路。 
基础属性：包含技能等级、释放条件、资源消耗、冷却时间（CD）及运行时技能数据。 
技能原子化：将复杂技能拆解为多个独立“技能能力（Skill Ability）”。例如：一个技能可组合“近战范围 AOE + 子弹位移 + 附加 Buff”。 

3. Buff 系统（Buff System）
管理单位身上的持续性效果，包含 Buff 等级、属性修改、周期效果（DoT/HoT）、叠层层数以及触发时传入的运行时参数。 

4. 统一触发系统（Trigger System）
配置链路：将一次触发拆解为 事件 → 条件 → 目标 → 触发效果。 
通用性：受击、造成暴击、击杀目标、Buff 周期结算等均走同一套配置链路，绝大多数被动技能也基于此系统实现。 

5. 伤害结算（Damage Processing）
技能命中目标后触发，集中处理攻击属性、伤害类型、暴击、抗性、防具穿透、伤害加成等综合计算，输出最终数值。 

6. AI 与状态机（AI & State Machine）
行为树 AI：怪物与召唤物使用行为树处理寻路、追击、站位、距离判断及普通怪与 Boss 的技能选择差异。 
逻辑状态机：非动画状态机，用于控制单位逻辑状态（移动、待机、释放技能、受击、死亡），并将状态驱动给动画与定位逻辑。 

7. 配置表与数据流（Data & Table Pipelines）
二维表格（Excel/AI辅助生成）：用于技能基础数据、数值等级、Buff 等数据，通过导表工具转码。 
ScriptableObject (SO)：针对技能能力组合与复杂触发逻辑，使用 Unity SO 等可视化资源进行配置。 
</details>
<hr>

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
<hr>

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
<hr>

<a id="玩法"></a>
### 先建玩法

```
输入->检测->变换->通信->状态与逻辑
在构思任何新机制（如宝箱、NPC、抓钩等）时，只需通过回答这 5 个问题即可梳理出整体开发思路： 
宝箱：检测玩家靠近 → 输入（按 E 键） → 状态逻辑判断是否已打开 → 变换（播放旋转打开动画） → 通信（给玩家增加物品）。 
抓钩：输入（按下左键） → 变换与检测（向指针方向发射，检测碰撞点） → 状态切换（从地面运动切换为空中飞行） → 变换（计算弧度并拉动玩家位移）。
```
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E6%8F%90%E7%A4%BA%E6%89%8B%E6%B3%95%E7%8D%8E%E5%8B%B5.jpeg" width="300" height="300"></img>
<hr>

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

<hr>

<a id="美術"></a>
### 美術
```
什麼是繪畫中的生命力？欣賞生命力的本質是在欣賞多樣性。世界上沒有一模一樣的物體，如果不畫出獨有的生命力，就是在忽視個性、抹殺多樣性。
觀察與抽象化動態>大型與小型上的動態強化
```
Fresnel實現「透肉感」

【迷失 Stray 地编参考】https://www.bilibili.com/video/BV1enK562E17/?share_source=copy_web&vd_source=d7f849d08eeb1405afe10c2ea0062d8e
<br>【Godot学习记录_快速搭建3D室外场景】 https://www.bilibili.com/video/BV1bV6wBXE5o/?share_source=copy_web&vd_source=d7f849d08eeb1405afe10c2ea0062d8e<br>
https://www.bilibili.com/video/BV1frJi6SEcF/<br>
排布插件 ：github.com/HungryProton/scatter<br>
地形插件 ：Terrain 3D<br>
材质下载插件：	Poly Haven Import/Ambient CG (error) <br>

<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E8%B2%BC%E5%9C%96_2_4_%E7%89%B9%E6%AE%8A.PNG" width="300" height="300"></img>

**美術=為什麼喜歡這種東西>有梗**
**思考遊戲什麼需要camera展示/什麼時候用AE**
**從「肌肉記憶」到「敘事與審美」：作品的真正價值不在於點擊滑鼠有多快或熬夜調材質的「苦勞」，而在於創作者的審美、個人閱歷、敘事邏輯與個人認知。**
Albedo（基礎色 / 固有色）：物體本身的顏色，決定物體吸收多少光、反射多少光。
Roughness（粗糙度）：決定高光的集中或發散程度。  
Metallic（金屬度）
Normal（法線貼圖）：用以精細控制表面光照反射的微觀方向與凹凸細節。
菲涅爾效應：光線入射角不同，反射率會產生變化。[視線的水面幾乎沒有反射能看到水底，而遠處水景反射則非常清晰。] PBR 完美模擬了這種物理規律。  「濕身效果」的實現原理：在原有 PBR 材質貼圖上，疊加一層半透明的雨水材質貼圖。  覆蓋原表面的粗糙度、金屬度和法線等信息，並利用動態遮罩與水痕法線貼圖，讓水滴隨機出現與消失，呈現出水膜的高光與逼真的動態雨滴感。  

先大后小》抓轮廓〉拒绝过度细化

<img src="https://github.com/pwhoae/Artbank/blob/main/godot/%E5%8F%83%E8%80%83%E5%9C%96/%E5%BB%BA%E7%AF%89/%E5%BB%BA%E7%AF%89%E5%AD%B8%E7%BF%92%20(3).JPG" width="300" height="300"></img>
建筑的核心目的是塑造“空”： 无论内部空间还是外部空间，“空”的部分才是人类真正使用和活动的场所。
高宽比与压迫感： 街道越窄、两侧建筑越高，中间空间的压迫感越强。若无法展宽街道，需采用相应剖面设计解决。 
退台手法 (Setback)：
原理： 沿街行人抬头只能看到底层边缘，无法看到高层退进的部分。 
MD
效果： 在增加建筑面积的同时，保持街道地面的舒适尺度与开阔感（欧洲老城区高层建筑常用手法）。 

| 空间操作/形态 | 空间特性与心理感受 | 现实/设计应用延伸 |
| ----- | ----- | ----- |
| **阳角 (Convex Corner)**  MD | 人流贴着边缘走，流线具**强流动性**，停留线弱，不宜做停留设计。  MD | 城市角部的交通疏导设计。  MD |
| **阴角 (Concave Corner)**  MD | 偏离主要直线流线，人流更容易且舒适地在此**停留**。  MD | 适合布置座椅、小憩区或角落广场。  MD |
| **开阔通道 vs 凹入空间**  MD | 去掉一栋沿街建筑会打破单一流线，形成**适合停留的局部口袋空间**。  MD | 街道微更新、避风/避人流节点。  MD |
| **围合与开口（对称 vs 不对称）**  MD | **半围合：** 具有私密性与内向性； **全围合：** 阻隔外界，类似四合院；  MD  **中开口：** 庄严、具有对称仪式感； **侧开口：** 放松，形成视线转折。  MD | 中国传统园林折线步道（移步换景、掩映）；巴塞罗那网格切角街区（街块组合的灵活性）。  MD+ 1 |




## 2d/3d 視覺與渲染設定
```
UI 与 3D 元素的结合:Ipad/iphone show setting/音效/粒子/字體
用ai寫Tween/Shader
material>DiffuseMode,Specular Mode都改成Toon+roughness要拉到1>toon 3渲2,卡通着色（Toon shading）,菲涅尔效应（Fresnel）,抖动輪廓
gpuparticle(process material)>cpuparticle
像素風設定 Texture → Filter 設為 Nearest/Project → Rendering → Pixel Snap

准备好模型+GitHub上找开源的渲染>先用deepseek调研并验证HoyoToon与NiloToon两套开源渲染管线的技术特性，参考搭建渲染流程；然后使用gpt利用多模态能力分析参考图像的光影特征还原绝区零角色的渲染风格，进行多轮参数调整与视觉效果验证

```
## 2d/3d map 地圖
unity插件:Easy Build System
1. 地編:2d原圖>轉3d 刨解+貼紙指引+房子四視圖
2. 場景要找：中世界/熱帶島/紐約/地鐵
3. csg:operation,union,subtraction
4. 通过不同颜色定义不同的场景逻辑与规则 (白,黑,绿,红)
```
白:可通行区域;黑/藍：物理阻挡区;绿：前景遮挡层，营造镂空与前后空间层次感;红：出入口
```
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%9C%BA%E6%99%AF%E9%80%BB%E8%BE%91%E9%A2%9C%E8%89%B2%E7%BC%96%E7%A0%81%E8%AE%BE%E8%AE%A1%E6%8C%87%E5%8D%97.png" width="300" height="300"></img>

5. 游戏地编：服务于玩家全方位自由探索与交互。必须具备全局思维，且需要为玩法和性能让步;影视地编：只服务于固定摄像机镜头，只需保证单镜头内不穿帮，几乎不用考虑性能、灯光数量或模型精度限制
6. 将原画思维转变为 3D 关卡美术视角，哪怕只是制作一个很小的场景 Demo，也要保证空间结构的合理性和全角度的美观与连贯
9. 場景互動小道具/地圖互動/看到門持key 配套
10. 構圖-空間-建築-植被-山石-地表-燈光-耐看度
11. 模組化:1圖3變

```
# Godot 新手通用地圖規劃 Prompt 請為一名 **Godot 新手開發者**製作一張清晰、容易理解、可以直接拿來製作遊戲的「3D 遊戲地圖規劃圖」。 以 **【遊戲類型／地圖主題】** 為核心，例如：冒險地圖、城市、森林、迷宮、賽車場、平台跳躍關卡、射擊場景、Boss 戰場等。 ## ① 地圖整體概念 先明確定義： * 地圖名稱：**【地圖名稱】** * 遊戲類型：**【遊戲類型】** * 玩家目標：**【玩家需要完成什麼】** * 地圖主要玩法：**【探索／戰鬥／解謎／競速／平台跳躍等】** * 地圖整體風格：**【幻想／現代／科幻／寫實／卡通等】** * 建議地圖大小：以適合 Godot 新手製作的中小型地圖為主 * 避免過度複雜的道路、建築與場景結構 --- ## ② Top-down 地圖平面圖 製作一張清楚的俯視地圖，使用簡單圖形表示： * 玩家起點 * 玩家主要移動路線 * 終點 * 主要區域 * 次要區域 * 道路／通道 * 障礙物 * 敵人區域 * 收集品 * 補給區 * Boss／重要事件區域 * 出入口 使用不同顏色與簡單圖示區分不同功能。 用箭頭表示玩家推薦行進方向。 整體必須一眼看懂，不要使用過於複雜的細節。 --- ## ③ 玩家遊玩流程 明確規劃玩家從開始到結束的流程： **出生點 → 第一個區域 → 教學／探索 → 第一個挑戰 → 中間區域 → 第二個挑戰 → 最終區域 → 終點** 如果是非線性地圖，則標示： **主路線** 以及： **可選探索路線** 讓新手開發者能夠清楚知道玩家會怎麼走。 --- ## ④ 3D Blockout 將俯視地圖轉換成簡單的 3D Blockout。 使用最基本的幾何體： * Cube * Cylinder * Plane * Ramp * Wall * Stairs 不要製作精細模型。 用不同高度表示： * 地面 * 高台 * 建築 * 山坡 * 懸崖 * 樓梯 * 平台 重點是確認： **空間比例、玩家移動距離、道路寬度、高低差與視線。** --- ## ⑤ Godot 新手實作對應 在規劃圖旁邊標示每個區域可以使用的 Godot 基礎節點。 例如： * 地面 → `StaticBody3D + CollisionShape3D` * 牆壁 → `StaticBody3D` * 道具 → `Area3D` * 玩家 → `CharacterBody3D` * 敵人 → `CharacterBody3D` * 觸發區域 → `Area3D` * 出入口 → `Area3D` * 移動平台 → `AnimatableBody3D` * 斜坡 → `MeshInstance3D + CollisionShape3D` * UI → `CanvasLayer` 只使用 Godot 新手容易理解的基本節點。 --- ## ⑥ 場景物件規劃 列出地圖需要製作的主要物件： ### 必要物件 * 地面 * 牆壁 * 道路／平台 * 玩家出生點 * 終點 * 碰撞體 ### Gameplay 物件 * 敵人 * 陷阱 * 收集品 * 寶箱 * 互動物件 * Checkpoint ### 裝飾物件 * 樹木 * 石頭 * 建築 * 路燈 * 箱子 * 招牌 * 植物 把「Gameplay 必要物件」與「純裝飾物件」明確分開。 --- ## ⑦ 視覺參考 提供少量、容易理解的參考圖： ### Environment 建築、地形、道路、植物、岩石等。 ### Gameplay 玩家活動空間、障礙物、敵人位置。 ### Lighting 白天／夜晚／黃昏／室內等。 ### Color Palette 提供 3～5 個主要顏色，確定整張地圖的視覺方向。 不要堆放大量無關參考圖。 --- ## ⑧ 新手製作優先級 在地圖右下角加入： ### P0：一定要先完成 * 玩家可以出生 * 玩家可以移動 * 地面有碰撞 * 地圖有明確起點與終點 * 主路線可以正常遊玩 ### P1：核心玩法 * 敵人 * 障礙物 * 收集品 * Checkpoint * 互動物件 ### P2：美術優化 * 建築細節 * 裝飾物 * 材質 * 光照 * 粒子效果 * 氛圍效果 讓新手知道： **先讓地圖「能玩」，再讓地圖「好看」。** --- ## ⑨ 最終規劃圖版面 使用類似遊戲開發企劃板的資訊整理方式： **左側：** 地圖概念 + 玩家目標 + 遊玩流程 **中央：** 大型 Top-down Map + 玩家路線 + 區域標示 **右上：** 簡化 3D Blockout **右中：** Environment Reference **右下：** Godot Node 對應 + 製作優先級 整體採用： **清晰、簡潔、遊戲開發文件風格、容易閱讀、適合 Godot 新手理解。** 避免過度專業的美術術語、過度複雜的建築細節與不必要的小型資訊。 最終目標是讓一名第一次使用 Godot 3D 的新手，看完規劃圖後可以直接開始： **建立 Scene → 建立 Blockout → 加 Collision → 放置 Player → 建立 Gameplay → 最後進行美術優化。**
```
<img src="https://github.com/pwhoae/Artbank/blob/main/godot/%E5%8F%83%E8%80%83%E5%9C%96/%E5%BB%BA%E7%AF%89/%E5%9C%B0%E6%A8%99%E8%A8%AD%E8%A8%88%E8%8D%89%E7%A8%BF%E5%8F%83%E8%80%83%E5%9C%96%20(1).JPG
"></img>

<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%9C%B0%E5%9C%96%E8%A8%AD%E8%A8%88%E5%8F%83%E8%80%83%E5%9C%96%20(1).png"></img>

<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%9C%B0%E5%9C%96%E8%A8%AD%E8%A8%88%E5%8F%83%E8%80%83%E5%9C%96%20(2).png"></img>

<img src="https://github.com/pwhoae/Artbank/blob/main/godot/%E8%B1%90%E5%AF%8C%E7%B4%B0%E7%AF%80%E6%96%B9%E6%B3%95.JPG">
	</img>
<hr>


地编与构图的关系：游戏关卡与美术地编（Level Art）门槛低但天花板极高，好场景与普通场景的核心差距在于对空间构图的解剖与规律运用。构图是“有目的性地选择和安排取景内容”，由场景构成与取景器（相机/视角）共同决定。 

核心要素：
点线面与视觉引导线：将空间元素组合为视觉引导线（如道路、悬崖、山势、物体边缘、剪影等），指引玩家视线落于主体或中心，产生假 3D 纵深感。 

黄金分割与框架：绝大多数高品质原画/地编均建立在黑白稿框架与黄金分割比例之上。 

15 种经典地编/场景构图模板：
1.三角形构图：最具稳定性，常将主建筑/主体置于黄金分割点上。 
2.S / Z 型构图：通过道路、悬崖轮廓等形成蜿蜒延伸的 S 或 Z 型轨迹。 
3.支点构图：利用极宏大与极微小（如巨山与小船、巨型飞船与采矿机）形成强烈的体量对比。 
4.水平构图：表达权威、皇权或秩序感，可通过左右细节形成微弱打破。 
5.秤杆构图：支点构图的反向运用，将繁复/重的视觉要素集中于画面上半部。 
6.O 字型（圆形）构图：多用于古老城市或环形结构，建议在近景破形以避免呆板。 
7.隧道/框架构图：常用于科幻走廊、室内或洞口，用前景框架聚焦中远景主体。 
8.对角线构图：利用大斜坡或对角切割线条展现动感与空间倾斜。 
9.十字构图：横线与纵线（如桥梁与大型装备）交叉形成视觉节点。 
10.放射式（一点透视）构图：利用一点透视与建筑轮廓引导线将视觉重心汇聚于黄金分割点。 
11.C 字型构图：通过弧形道路或河流自然形成由近及远的视线牵引。 
12.L 型构图：利用边缘侧立的主体（如巨大风车/建筑边角）压角，为画面另一侧留出开阔视野。 
13.横格式/三分法构图：将天空、远山、地面分为三层横向延伸，并适度打破横线。 
14.三点式构图：画面中设置三个明确的视觉支撑点，连线构成隐藏三角形。 
15.中心主体构图：将核心建筑或主体置于画面正中心（可结合三角形构图使用）。 
<hr>
界面美术需求**


**1 UI需求**
*   统计多少个界面、弹窗、按钮
*   切图大小规格
*   适配效果 尺寸比例
*   主次布局、信息传达（黑白图效果）


**2 原画需求**
*   道具图标、入口图标、场景、角色、插画
*   备注：尽量给参考概念图


**3 动作需求**
*   描述清楚动作的步骤，持续的秒数
*   备注：看情况找参考


**4 特效需求**
*   描述清楚特效的效果，持续的秒数
*   备注：尽量找参考
以下是圖片中辨識出的文字內容：


### **標題**
數據表基礎概念


### **流程圖內容**
*   **左側標註：**參數、屬性
*   **核心流程：**遊戲對象 → (整理 / 規劃) → **配置表** → (讀取 / 處理) → 遊戲代碼


### **表格範例**
| lv | exp | reward |
| :--- | :--- | :--- |
| int | double | string |
| CS | CS | S |
| **等級** | **升級經驗** | **升級獎勵道具** |
| 1 | 99 | 鑽石*2 |
| 2 | 999 | 鑽石*3 |
| 3 | 9999 | 鑽石*4 |


### **文字說明：什麼是數據表？**
*   **定義：** 數據表是由行和列組成的二維結構，用於存儲和管理數據。
1.  **角色數據存儲：** 各種角色的屬性信息，如生命值、攻擊力、防禦力、技能列表等。
2.  **道具數據存儲：** 包括道具的名稱、類型、屬性加成、使用效果、獲取方式等。
3.  **關卡數據存儲：** 包含了關卡的布局、難度系數、怪物分布、任務目標等信息。
4.  **戰鬥邏輯：** 計算角色的傷...（部分文字遮擋）...能數據。
5.  **任務邏輯：** 任務系統中的任務觸發條件、任務目標、任務獎勵等信息都存儲在數據表中。
6.  **經濟系統邏輯：** （部分文字被遮擋）
<hr>

### **文字說明：什麼是數據表？**
数据与大盘分析：Data.ai、AppAnnie、七麦数据（Qimai）。 
买量与广告出海监测：SocialPeta（广固）、Sensor Tower 

### **音樂**
通过通道索引（Index）分流管理音讯，既能保证背景音乐持续循环，又能严格限制音效并发数量，从根本上避免了音效堆叠导致的爆音问题，极大地简化了音频调用的复杂度。 
音效zenless
鬼畜
suno

<hr>

### 運營
数据与大盘分析：Data.ai、AppAnnie、七麦数据（Qimai）。 
买量与广告出海监测：SocialPeta（广固）、Sensor Tower 

### 网站

贴图下载网站：https://ambientcg.com/
HDR、模型、贴图素材：https://polyhaven.com/
素材、参考：https://pixabay.com/
插件等：https://blenderco.cn/


表格工作法
平台選擇（內容平台 vs. 貨架電商）：
應選擇內容平台（如小紅書、抖音等）：因為內容和商品都清晰公開透明，你不仅能看到別人賣什麼商品賺錢，還能清楚知道「是什麼樣的內容把流量盤活的」。  
第一步：羅列「對標清單」（第一列）
在表格第一列羅列你認為可以賺錢、感興趣領域的各種生意的對標帳號或項目（初期可以不限行業、不限賽道，只要合法且能看到怎麼搞流量、怎麼獲客即可）。  
應避開純貨架電商（如京東、淘寶、拼多多）：只看得到上架商品，卻完全不知道流量從何而來，對新手拆解生意毫無幫助。  
三種獲取「收入量級」的方法（第二列）
在表格第二列填上對標的預估收入，不同變現模式有不同的評估方式：
電商賣貨型：透過平台上架商品的售價乘以銷量來預估（需注意避開評價區有明顯水軍或異常集中 IP 的假帳號）。  
自媒體廣告商單型：觀察博主平均每個月發布幾條廣告、單條廣告報價多少（可透過平台官方廣告主後台，如小紅書「蒲公英」公開透明查詢）。  
私域引流變現型：最難精確估算，但基本功是「親自走完對方從售前、售中到售後的完整銷售流程」（例如把對標的商品都買過一圈），走完後大體能感知對方的營收量級是月入 1 萬、10 萬還是百萬。  
第三步：評估「主觀模仿難度」（第三列，含金量最高）
好項目的定義：真正的好項目應該是「客觀難度高、但主觀感受難度低」（即別人覺得很費勁、有門檻，但你因個人興趣或優勢覺得做起來很簡單、甚至不賺錢也願意乾的事情）。  
避免頻繁換賽道：不要隨便找個門檻極低但天花板也很低的項目（如無火源電商），做三個月黃了又換，不斷折損時間與機會成本。  
三、 排序與篩選：找到你的生意
交叉排序：利用 Excel 的排序功能，將「收入按降序排列」，同時將「難度按升序排列」。排在最前面的，就是那些收入較高、且在你看来主觀模仿難度最低的生意。  
四、 避坑與常見問題提醒
發現對標都有兩把刷子，自己不會怎麼辦？
這不是問題，而是一個方向指南針。它告訴你有限的時間和精力應該往哪裡使，只要投入精力把這些能力搞定，就能複製一個被驗證過的生意。  
表格不要限制行業與賽道：
初創期不要給自己太多枷鎖。當年 UP 主建立第一個生意時，表格裡列了上百行各行各業能想到的生意，只要合法且賺錢、自己覺得能幹就都留下來。  
生意的本質是「商品 + 匹配的流量」：
做生意的第一步是找買家（找到購買商品的人），而商品不能憑空存在，必須有相應的流量去支撐它。而能告訴你「什麼商品和什麼流量匹配在一起生意能成立」的答案，就是你的對標。  




