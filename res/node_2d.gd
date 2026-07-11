extends Node2D
@export var player_list_database:PlayerListDatabase


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _save() -> void:
	#var data = SceneData_backup.new()
	#data.player_position = player.global_position
	#ResourceSaver.save(data, "user://scene_data.tres")
	print("saved!")
	
func _load() -> void:
	#var data = ResourceLoader.load("user://scene_data.tres") as SceneData
	#player.global_position = data.player_position
	print("loaded!")
