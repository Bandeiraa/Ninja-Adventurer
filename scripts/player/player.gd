extends KinematicBody2D
class_name Player

onready var sprite: Sprite = get_node("Sprite")

func _ready() -> void:
	Data.loadData()
	sprite.texture = load(Data.stored_data.class)
