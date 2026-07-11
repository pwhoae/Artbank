extends Resource
class_name PlayerList

@export_category("Player Setting")
@export var player_position_2d:Vector2
@export var player_position_3d:Vector3
@export var player_health:float
@export var player_max_health:float
@export var player_magicpoint:float
@export var player_max_magicpoint:float
@export var player_death_count:int

@export_category("Level Setting")
@export var level_available:Array[int]
