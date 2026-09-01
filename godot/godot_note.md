### 流程
認證玩法->確立美術>均衡性能+美術 
wennie:會讓人不知不覺地被吸引到某個地方
但遊戲底層卻是一個嚴謹的數學 Excel 試算表

信息量=完成度
juicy
skilltree 只要互動就加音效
連段
處決動畫
中間插入漫畫演出
<hr>

### 玩法靈感
1. "The Weenie" 指的是一種視覺吸引物或地標（例如城堡），就像用香腸誘惑小狗一樣，用來吸引遊客不知不覺地朝那個方向走去。
2. skilltree+連線
3. 組合
4. 偽3d效果,彩虹字,浮動,互動流體模擬,卡反絕區零火鍋,3D 掃雷
5. 瘋狂鴿子3d /滾動的天空/ 號角保齡球/ 閃避球/ 滑雪/ 美夢zzz/ TNT弹道轨迹
6. 互動式動態霧氣
7. 派對屬性
8. render texture=subviewer
9. AtlasTexture 拼圖
10. 斬殺boss 擊破 動畫
11. 宝箱/抓钩
12. 勾索,傳送門槍,coin〉升級,爬墻,動作設計：技能普攻/強化/大招,無縫第三人稱視角傳送門
13. robot核心就是key
14. 進入迷宮>獲得新道具>擊敗 Boss>開啟新地圖 ## 被動遊戲 vs 主動遊戲
15. 遠路+直接 ## 找开源demo>做遊戲:miss hit/鏡像密碼

手忙腳亂開鎖遊戲
<hr>

### godot note (pck)
開發技巧
1. 沒有遊戲經驗:不要動作遊戲>劇情+玩法+美術>ui+bgm>demo玩法1個月>開發:宣發>PV不要Logo=5:5 >手遊 (次要)簡單化+同質化 >itch 
2. 不要重复造轮子：合理利用引擎资源商;視差省MB,Low poly:[poly.pizza (Quaternius)]與低解析度貼圖;減法,別做镜子(魔术)[3d要加入場景光照+環境光+camera]
善用現成 Addons / Plugins（不要重複造輪子）Panku Console：遊戲內即時控制台，可追蹤變數、執行命令，極度利於 Debug 與測試。 
GodotSteam：輕鬆無縫對接 Steam 平台功能（成就、多人連線等）。 
如何逆向一个Godot游戏？:用GDRE 

3. 貼圖/复用与旋转角度增加變化:https://ambientcg.com/
4. 地编參考:https://www.artstation.com/artwork/dyk3nQ
5. 解刨示意圖:tripoai https://studio.tripo3d.ai?invite_code=O0E0Z6
```
把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格
```
6. tscn | gdscript | assets (audio,png,glb,)>核心痛點：為什麼不該為每把武器建一個獨立場景（Scene）;收藏 property (position,rotation,scale,shape) Collision3D常用>Margin以防止穿墙。

### check

<hr>
gridmap 調cell size
7. 
8. 上限與下限：策劃案 vs. Demo 策劃案決定上限：個人獨立製作 Demo 的美術、動作與特效資源極度有限。完整的設計案可以寫出更帥氣的連招、複雜的系統與理想中的戰鬥效果，展現你的設計天花板。 Demo 決定下限：即使資源受限，Demo 必須把核心玩法（Core Loop）與核心機制做簡化版的實作，做到自圓其說。
9. asd rotate xyz
动态天花板算法（Dynamic Ceiling Generation）开发思路：为方便在编辑器中俯瞰布置房间与摆放物件，场景内不预先绘制天花板。  代码自动化实现：运行时在 BaseRoom 脚本中过滤出所有地面/坑洞等无天花板网格的 ID 列表。  使用 get_used_cells() 遍历当前房间已被绘制的坐标。  若坐标处的单元格需要天花板，则通过代码在 ceilings 网格地图的对应三维坐标动态绘制天花板。
碰撞体命名规范：模型重命名后缀带 -col（如 ground_col、wall_col），导入 Godot 时系统会自动生成 StaticBody3D 静态碰撞体。  
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

在 Action Editor 中创建 default（默认姿态）、idle_loop（待机循环）和 run_loop（跑步循环）动画。  
<hr>
设计规划图模板

地貌与历史背景
多维细节参考库
建筑结构
灯光氛围：确定时间段及角落光影。
贴花与破损细节：收集管道、污渍、电线、海报等生活化元素。 

空间测量: 放入角色模型进行实际跑图测试，反复测量比例与空间感。 

建筑蓝图与模块化拼装:通用建筑优先：先搭建占比最高的高频居民建筑，再制作低频建筑
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
**美術=為什麼喜歡這種東西>有梗**
**思考遊戲什麼需要camera展示/什麼時候用AE**
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

### **音樂**
通过通道索引（Index）分流管理音讯，既能保证背景音乐持续循环，又能严格限制音效并发数量，从根本上避免了音效堆叠导致的爆音问题，极大地简化了音频调用的复杂度。 


