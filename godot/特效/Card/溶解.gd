extends Control

@export_group("Dissolve Settings")
@export var dissolve_button: Button                      # 觸發按鈕引用
@export var dissolve_duration: float = 1.2                # 溶解動畫時間 (秒)
@export var dissolve_trans: Tween.TransitionType = Tween.TRANS_SINE
@export var dissolve_ease: Tween.EaseType = Tween.EASE_IN_OUT

var shader_mat: ShaderMaterial
var is_dissolved: bool = false
var tween: Tween

func _ready() -> void:
	# 取得 ShaderMaterial
	shader_mat = material as ShaderMaterial
	
	# 綁定按鈕點擊事件
	if dissolve_button:
		dissolve_button.pressed.connect(_on_dissolve_button_pressed)

# 按鈕觸發溶解 / 重置動畫
func _on_dissolve_button_pressed() -> void:
	if not shader_mat:
		return
		
	# 避免動畫中途重複連點
	if tween and tween.is_running():
		tween.kill()

	is_dissolved = !is_dissolved
	var target_val: float = 1.0 if is_dissolved else 0.0
	
	# 禁用按鈕直到動畫結束，提升手感與防呆
	if dissolve_button:
		dissolve_button.disabled = true

	tween = create_tween()
	# 動態驅動 Shader 中的 dissolve_value 參數
	tween.tween_property(shader_mat, "shader_parameter/dissolve_value", target_val, dissolve_duration)\
		.set_trans(dissolve_trans)\
		.set_ease(dissolve_ease)
		
	# 動畫結束後重新啟用按鈕，並更新按鈕文字
	tween.finished.connect(func():
		if dissolve_button:
			dissolve_button.disabled = false
			dissolve_button.text = "重置卡牌" if is_dissolved else "燒毀卡牌");
