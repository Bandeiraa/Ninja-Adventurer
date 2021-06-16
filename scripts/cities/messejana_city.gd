extends Node
class_name MessejanaCity

const PLAYER = preload("res://scenes/player/player.tscn")

func _ready() -> void:
	var player_to_instance = PLAYER.instance()
	add_child(player_to_instance)
