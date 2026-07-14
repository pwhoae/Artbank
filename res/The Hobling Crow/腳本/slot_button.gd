extends Button
class_name TruthSlotButton

signal word_placed(slot_idx: int, word_idx: int)

var slot_index: int = -1
var is_filled: bool = false
var filled_word_index: int = -1

func _ready() -> void:
	custom_minimum_size = Vector2(100, 36)
	_update_style()

func _update_style() -> void:
	if is_filled:
		add_theme_color_override("font_color", Color.WHITE)
		flat = false
	else:
		text = " [ 拖入此處 ] "
		add_theme_color_override("font_color", Color(0.9, 0.6, 0.2)) # 橘色預留虛線外觀
		flat = true

# 【核心2：檢測此處是否可以被放下】
func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	# 只有當 data 含有 word_index，且本槽目前為空時，才接受拖放
	if data is Dictionary and data.has("word_index") and not is_filled:
		return true
	return false

# 【核心3：當放開滑鼠時，執行放入數據】
func _drop_data(at_position: Vector2, data: Variant) -> void:
	var dropped_word_idx = data["word_index"]
	word_placed.emit(slot_index, dropped_word_idx)
