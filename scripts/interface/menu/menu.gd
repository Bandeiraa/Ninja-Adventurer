extends Control
class_name Menu

onready var buttons_container: VBoxContainer = get_node("Buttons_Container")
onready var new_game_container: Control = get_node("New_Game_Container")

func _ready() -> void:
	for button in buttons_container.get_children():
		button.connect("pressed", self, "button_pressed", [button.name])
		
		
func button_pressed(action: String) -> void:
	match action:
		"Play":
			buttons_container.hide()
			new_game_container.show()
			
		"Continue":
			buttons_container.hide()
			
		"Quit":
			get_tree().quit()
