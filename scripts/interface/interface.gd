extends CanvasLayer

onready var menu: Control = get_node("Player_Interface")
onready var stats: TextureRect = menu.get_node("Stats")

func _process(_delta: float):
	if Input.is_action_just_pressed("Menu"):
		menu.visible = !menu.visible
		get_tree().paused = !get_tree().paused
		stats.hide()
