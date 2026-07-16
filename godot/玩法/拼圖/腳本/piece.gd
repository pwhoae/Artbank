# Piece.gd
extends TextureButton
class_name PuzzlePiece

signal piece_clicked(piece: PuzzlePiece)

# 記錄這張碎片的正確索引值（例如 0 到 15）
var correct_id: int = -1

func _ready() -> void:
	# 點擊按鈕時，觸發訊號並把自己傳出去
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	piece_clicked.emit(self)

# 當這張碎片被選中時，給它一個視覺反饋（例如變暗或加邊框）
func set_selected(is_selected: bool) -> void:
	if is_selected:
		modulate = Color(0.7, 0.7, 1.0) # 稍微變藍/變暗
	else:
		modulate = Color.WHITE
