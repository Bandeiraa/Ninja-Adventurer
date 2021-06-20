extends TextureRect
class_name PlayerMenu

onready var buttons_container: VBoxContainer = get_node("Buttons_Container")

func _ready() -> void:
	for button in buttons_container.get_children():
		button.connect("pressed", self, "on_button_pressed", [button.name])
		
		
func on_button_pressed(type: String) -> void:
	match type:
		"Stats":
			pass
			
		"Inventory":
			pass
			
		"Options":
			pass
			
		"Quit":
			hide()


func _process(_delta: float):
	if Input.is_action_just_pressed("Menu"):
		visible = !visible
