extends Control
class_name PlayerInterface

onready var buttons_container: VBoxContainer = get_node("Menu/Buttons_Container")
onready var stats_container: TextureRect = get_node("Stats")

func _ready() -> void:
	for button in buttons_container.get_children():
		button.connect("pressed", self, "on_button_pressed", [button.name])
		
		
func on_button_pressed(type: String) -> void:
	match type:
		"Stats":
			stats_container.visible = !stats_container.visible
			
		"Inventory":
			pass
			
		"Options":
			pass
