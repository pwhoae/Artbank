### 流程
認證玩法->確立美術>均衡性能+美術 
wennie:會讓人不知不覺地被吸引到某個地方

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

<hr>

### godot note (pck)
開發技巧
1. 沒有遊戲經驗:不要動作遊戲>劇情+玩法+美術>ui+bgm>demo玩法1個月>開發:宣發>PV不要Logo=5:5 >手遊 (次要)簡單化+同質化 >itch 
2. 不要重复造轮子：合理利用引擎资源商;視差省MB,Low poly:[poly.pizza (Quaternius)]與低解析度貼圖;減法,別做镜子(魔术)[3d要加入場景光照+環境光+camera]
3. 貼圖:https://ambientcg.com/
4. 地编參考:https://www.artstation.com/artwork/dyk3nQ
5. 解刨示意圖:tripoai https://studio.tripo3d.ai?invite_code=O0E0Z6
```
把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格
```
6. tscn | gdscript | assets (audio,png,glb,)>核心痛點：為什麼不該為每把武器建一個獨立場景（Scene）;收藏 property (position,rotation,scale,shape) Collision3D常用>Margin以防止穿墙。

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
<img src="https://github.com/pwhoae/Artbank/blob/main/godot/%E5%8F%83%E8%80%83%E5%9C%96/%E5%BB%BA%E7%AF%89/%E5%BB%BA%E7%AF%89%E5%AD%B8%E7%BF%92%20(3).JPG
" width="300" height="300"></img>

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
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%9C%B0%E5%9C%96%E8%A8%AD%E8%A8%88%E5%8F%83%E8%80%83%E5%9C%96%20(1).png"></img>

<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%9C%B0%E5%9C%96%E8%A8%AD%E8%A8%88%E5%8F%83%E8%80%83%E5%9C%96%20(2).png"></img>
