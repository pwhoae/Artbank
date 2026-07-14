extends Button
class_name DraggableWordButton

@export var word_name: String = ""
@export var word_index: int = -1

func _ready() -> void:
	text = word_name;custom_minimum_size = Vector2(120, 45)
	print(text)

func _get_drag_data(at_position: Vector2) -> Variant:
	if disabled:return null;
		
	var preview = Button.new()
	preview.text = text
	preview.custom_minimum_size = size
	preview.modulate.a = 0.6  # 稍微透明度
	preview.rotation_degrees = 5.0 # 微幅旋轉，營造拖曳活潑感
	set_drag_preview(preview)
	
	# 回傳打包的資料
	var data = {
		"source_node": self,
		"word_name": word_name,
		"word_index": word_index
	}
	return data
