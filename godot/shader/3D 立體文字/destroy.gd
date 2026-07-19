#https://share.gemini.google/EpMduw4mnDDX
extends Area3D
@export var max_hp: float = 100.0
var current_hp: float = max_hp

@onready var text_mesh: MeshInstance3D = $"../MeshInstance3D"
@onready var particles: GPUParticles3D = $"../GPUParticles3D"
@onready var collision_shape: CollisionShape3D = $CollisionShape3D


var is_destroyed: bool = false
var original_scale: Vector3

func _ready() -> void:
	current_hp = max_hp
# 在初始化時，先記錄 3D 文字原本的縮放大小 (Scale)
	if text_mesh:
		original_scale = text_mesh.scale
		
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		_on_button_pressed()

func take_damage(amount: float) -> void:
	if is_destroyed:return
	current_hp -= amount
	if current_hp <= 0:
		current_hp = 0
		destroy()
	else:
		# 計算剩餘血量比例 (0.0 ~ 1.0)
		var hp_ratio: float = current_hp / max_hp
		
		# 執行受擊動畫（等比例縮小 + 打擊微縮彈回感）
		apply_damage_effects(hp_ratio)


func apply_damage_effects(hp_ratio: float) -> void:
	if not text_mesh:return

# 計算目標縮放大小（原本尺寸 * 血量比例）
	var target_scale: Vector3 = original_scale * hp_ratio

	# 建立 Godot 4 的 Tween 補間動畫，增加「受擊打擊感 (Juice)」
	var tween = create_tween().set_parallel(false)

	# 1. 瞬間往內凹縮多一點（模擬受擊擠壓，例如目標尺寸的 85%）
	var squish_scale = target_scale * 0.85
	tween.tween_property(text_mesh, "scale", squish_scale, 0.05).set_trans(Tween.TRANS_SINE)

# 2. 隨後彈回至正確的血量比例尺寸
	tween.tween_property(text_mesh, "scale", target_scale, 0.15).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)


func destroy() -> void:
	is_destroyed = true

	# 1. 隱藏原本的 3D 文字與關閉碰撞，防止重複受擊
	if text_mesh:
		text_mesh.visible = false
	if collision_shape:
		collision_shape.disabled = true

	# 2. 觸發粒子爆炸
	if particles:
		particles.emitting = true
		# 等待粒子播放完畢
		await get_tree().create_timer(particles.lifetime).timeout

	# 3. 釋放記憶體
	# 【重要注意】：因為您的 MeshInstance3D 與 GPUParticles3D 是放在 Area3D 的父節點下 ($"../")，
	# 如果只呼叫 queue_free()，只會刪除這個 Area3D 碰撞區，那些已經隱藏的 Mesh 依然會殘留在場景中造成記憶體洩漏。
	# 我們必須刪除整個父節點（假設整個組合是以一個 Node3D 作為根節點）：
	if get_parent():
		get_parent().queue_free()
	else:
		queue_free()


func _on_button_pressed() -> void:
	take_damage(10)
	pass # Replace with function body.
