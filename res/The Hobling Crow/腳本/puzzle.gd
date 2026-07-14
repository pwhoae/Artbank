extends Control

@onready var story_flow: FlowContainer = $MainLayout/RightPanel/StoryPaper/StoryFlow
@onready var options_grid: GridContainer = $MainLayout/RightPanel/OptionsArea/OptionsGrid
@onready var continue_button: Button = $MainLayout/RightPanel/BottomActions/ContinueButton

# 核心數據
var segments = ["委託人自述：帶家中 ", " 散步時，發現其行為異常。偵探們現地調查，發現途經破損的 ", "。牠受 ", " 影響，感到不適。"]
var correct_answers: Array[String] = ["小狗", "驅鼠器", "特殊聲波"]
var option_words: Array[String] = ["機車", "小狗", "特殊聲波", "比利", "環境污染", "驅鼠器"]

var player_slots: Array[int] = [-1, -1, -1] # -1 代表空無一物

func _ready() -> void:
	rebuild_ui()

func rebuild_ui() -> void:
	# 1. 重構故事板
	for child in story_flow.get_children():
		child.queue_free()
		
	for i in range(segments.size()):
		var label = Label.new()
		label.text = segments[i]
		label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
		story_flow.add_child(label)
		
		# 加入 Slot
		if i < segments.size() - 1:
			var slot = TruthSlotButton.new()
			slot.slot_index = i
			
			# 如果玩家已經填入
			if player_slots[i] != -1:
				slot.is_filled = true
				slot.filled_word_index = player_slots[i]
				slot.text = option_words[player_slots[i]]
				# 如果玩家點擊已經填好的槽，可以「取回」字卡
				slot.pressed.connect(func(): _on_take_back_word(i))
			
			# 綁定拖曳放下成功訊號
			slot.word_placed.connect(_on_word_placed_into_slot)
			story_flow.add_child(slot)

	# 2. 重構字卡選項
	for child in options_grid.get_children():
		child.queue_free()
		
	for i in range(option_words.size()):
		var btn = DraggableWordButton.new()
		btn.word_name = option_words[i]
		btn.word_index = i
		
		# 若已被使用則禁能
		if i in player_slots:
			btn.disabled = true
			btn.modulate.a = 0.4
		else:
			# 點擊也可以直接填充 (相容點擊操作)
			btn.pressed.connect(func(): _on_word_clicked(i))
			
		options_grid.add_child(btn)

# 處理拖放成功事件
func _on_word_placed_into_slot(slot_idx: int, word_idx: int) -> void:
	player_slots[slot_idx] = word_idx
	rebuild_ui()
	_check_answers()

# 點擊直接填入
func _on_word_clicked(word_idx: int) -> void:
	var first_empty_slot = player_slots.find(-1)
	if first_empty_slot != -1:
		_on_word_placed_into_slot(first_empty_slot, word_idx)

# 退回字卡
func _on_take_back_word(slot_idx: int) -> void:
	player_slots[slot_idx] = -1
	rebuild_ui()
	continue_button.disabled = true

# 答案校對
func _check_answers() -> void:
	if -1 in player_slots:
		return
		
	var correct = true
	for i in range(player_slots.size()):
		if option_words[player_slots[i]] != correct_answers[i]:
			correct = false
			
	if correct:
		continue_button.disabled = false
		print("真相大白！")
	else:
		print("答案有誤，偵探嘆氣！")
