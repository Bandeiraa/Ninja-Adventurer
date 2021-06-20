extends CanvasLayer

onready var menu: TextureRect = get_node("Player_Menu")

func _process(_delta: float):
	if menu.is_visible():
		get_tree().paused = true
		
	elif menu.is_visible() == false:
		get_tree().paused = false
