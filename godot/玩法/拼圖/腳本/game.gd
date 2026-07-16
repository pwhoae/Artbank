# Game.gd
extends Control
@export_category("Setting")
@export var original_image: Texture2D # 預設大圖（若不從 FileDialog 讀取的話）
@onready var file_dialog: FileDialog = $user/FileDialog
@onready var texture_rect: TextureRect = $user/TextureRect

@onready var row: LineEdit = $user/row
@onready var col: LineEdit = $user/col
var grid_row: int
var grid_col: int

@onready var grid_container: GridContainer = $GridContainer

var pieces_list: Array[PuzzlePiece] = []
var selected_piece: PuzzlePiece
	
func _ready() -> void:
	file_dialog.file_mode = FileDialog.FILE_MODE_OPEN_FILE
	file_dialog.access = FileDialog.ACCESS_FILESYSTEM
	file_dialog.filters = PackedStringArray(["*.png, *.jpg, *.jpeg, *.webp ; Supported Images"])
	
	# 連接檔案選取事件
	file_dialog.file_selected.connect(_on_file_selected)
	
	user_setting()
	setup_grid()
	slice_and_create_pieces()
	shuffle_pieces()
	
func user_setting() -> void:
	grid_row = int(row.text)
	grid_col = int(col.text)

# 1. 初始化網格
func setup_grid() -> void:
	grid_container.columns = grid_col
	# 確保清除網格內所有舊的子節點
	for child in grid_container.get_children():
		child.queue_free()
	# 同時清空前一次的拼圖塊陣列
	pieces_list.clear()
	selected_piece = null

# 2. 動態切割圖片並創建拼圖塊
func slice_and_create_pieces() -> void:
	if not original_image:
		push_error("請先選擇圖片或在 Inspector 中指定預設圖片！")
		return
		
	var img: Image = original_image.get_image()
	var img_w = img.get_width()
	var img_h = img.get_height()
	
	# 計算每塊碎片的寬高
	var piece_w = img_w / grid_col
	var piece_h = img_h / grid_row
	
	# 外層是 Row (y)，內層是 Col (x)
	for y in range(grid_row):
		for x in range(grid_col):
			# 計算當前碎片正確的 ID (0 到 row*col - 1)
			var id = y * grid_col + x
			
			# 裁剪圖片對應區域
			var rect = Rect2i(x * piece_w, y * piece_h, piece_w, piece_h)
			var cropped_img = img.get_region(rect)
			var tex = ImageTexture.create_from_image(cropped_img)
			
			# 實例化拼圖塊
			var piece = PuzzlePiece.new()
			piece.texture_normal = tex
			piece.correct_id = id # 記住正確答案
			
			# 連接點擊事件
			piece.piece_clicked.connect(_on_piece_clicked)
			
			grid_container.add_child(piece)
			pieces_list.append(piece)

# 3. 洗牌（打亂碎片順序）
func shuffle_pieces() -> void:
	if pieces_list.is_empty():
		return
		
	# 打亂陣列順序
	var shuffled = pieces_list.duplicate()
	shuffled.shuffle()
	
	# 根據打亂後的順序，重新調整 GridContainer 內節點的渲染順序
	for i in range(shuffled.size()):
		var piece = shuffled[i]
		# 透過 move_child 改變它在 GridContainer 中的節點位置
		grid_container.move_child(piece, i)

# 4. 處理點擊與對調邏輯
func _on_piece_clicked(clicked_piece: PuzzlePiece) -> void:
	if selected_piece == null:
		# 第一下：選中碎片
		selected_piece = clicked_piece
		selected_piece.set_selected(true)
	else:
		if selected_piece == clicked_piece:
			# 重複點擊同一張，取消選取
			selected_piece.set_selected(false)
			selected_piece = null
		else:
			# 第二下：與另一張對調
			swap_pieces(selected_piece, clicked_piece)
			selected_piece.set_selected(false)
			selected_piece = null
			
			# 每次對調後檢查是否成功
			check_victory()

# 5. 執行對調
func swap_pieces(piece_a: PuzzlePiece, piece_b: PuzzlePiece) -> void:
	# 獲取它們在 Grid 內目前的節點索引值
	var idx_a = piece_a.get_index()
	var idx_b = piece_b.get_index()
	
	# 在 GridContainer 中交換節點順序（這會直接影響畫面的物理排列）
	grid_container.move_child(piece_a, idx_b)
	grid_container.move_child(piece_b, idx_a)

# 6. 檢查是否拼圖完成
func check_victory() -> void:
	var is_won = true
	# 檢查 GridContainer 內每個位置的碎片，其 correct_id 是否與目前的索引一致
	for i in range(grid_container.get_child_count()):
		var piece = grid_container.get_child(i) as PuzzlePiece
		if piece and piece.correct_id != i:
			is_won = false
			break
			
	if is_won:
		trigger_victory_effect()

# 7. 通關效果
func trigger_victory_effect() -> void:
	print("恭喜通關！")

# 按鈕點擊：開啟 FileDialog 讓玩家選取電腦中的圖片
func _on_button_pressed() -> void:
	file_dialog.popup_centered()

# FileDialog 選定檔案後的回呼函式
func _on_file_selected(path: String) -> void:
	var img = Image.new()
	var err = img.load(path)
	if err == OK:
		# 將載入的外部圖片包裝成 ImageTexture 並替換掉原本的 original_image
		original_image = ImageTexture.create_from_image(img)
		texture_rect.texture=ImageTexture.create_from_image(img)
		var tween = create_tween();
		tween.tween_property(texture_rect, "material:shader_parameter/progress", 1, 5)
		# 重新生成拼圖
		user_setting()
		setup_grid()
		slice_and_create_pieces()
		shuffle_pieces()
	else:
		push_error("無法載入圖片，錯誤碼: %d" % err)
