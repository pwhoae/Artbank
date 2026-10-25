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
