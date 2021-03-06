extends Control
class_name NewGame

var class_image: Array = [
	"res://NinjaAdventure/Actor/Characters/Boy/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Woman/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/BlueNinja/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/GreenNinja/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/RedNinja2/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/GrayNinja/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/DarkNinja/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/MaskedNinja/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Samurai/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/BlueSamurai/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/RedSamurai/redsamurai.png",
	"res://NinjaAdventure/Actor/Characters/Eskimo/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/EskimoNinja/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Cavegirl/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Caveman/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/EggBoy/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/EggGirl/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Knight/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/GoldKnight/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Inspector/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Noble/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Princess/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Greenman/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Lion/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/MaskFrog/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Monk/SpriteSheet.png",
	"res://NinjaAdventure/Actor/Characters/Skeleton/SpriteSheet.png"
]

var class_weapon: Array = [
	"res://scenes/items/equipments/weapons/stick.tscn",
	"res://scenes/items/equipments/weapons/stick.tscn",
	"res://scenes/items/equipments/weapons/sai.tscn",
	"res://scenes/items/equipments/weapons/sai.tscn",
	"res://scenes/items/equipments/weapons/sai.tscn",
	"res://scenes/items/equipments/weapons/sai.tscn",
	"res://scenes/items/equipments/weapons/sai.tscn",
	"res://scenes/items/equipments/weapons/sai.tscn",
	"res://scenes/items/equipments/weapons/katana.tscn",
	"res://scenes/items/equipments/weapons/katana.tscn",
	"res://scenes/items/equipments/weapons/katana.tscn",
	"res://scenes/items/equipments/weapons/fork.tscn",
	"res://scenes/items/equipments/weapons/fork.tscn",
	"res://scenes/items/equipments/weapons/club.tscn",
	"res://scenes/items/equipments/weapons/club.tscn",
	"res://scenes/items/equipments/weapons/club.tscn",
	"res://scenes/items/equipments/weapons/club.tscn",
	"res://scenes/items/equipments/weapons/sword.tscn",
	"res://scenes/items/equipments/weapons/big_sword.tscn",
	"res://scenes/items/equipments/weapons/rapier.tscn",
	"res://scenes/items/equipments/weapons/rapier.tscn",
	"res://scenes/items/equipments/weapons/lance.tscn",
	"bow",
	"res://scenes/items/equipments/weapons/hammer.tscn",
	"res://scenes/items/equipments/weapons/whip.tscn",
	"res://scenes/items/equipments/weapons/stick.tscn",
	"res://scenes/items/equipments/weapons/bone.tscn"
]

var class_faceset_image: Array = [
	"res://NinjaAdventure/Actor/Characters/Boy/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Woman/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/BlueNinja/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/GreenNinja/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/RedNinja2/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/GrayNinja/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/DarkNinja/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/MaskedNinja/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Samurai/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/BlueSamurai/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/RedSamurai/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Eskimo/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/EskimoNinja/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Cavegirl/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Caveman/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/EggBoy/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/EggGirl/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Knight/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/GoldKnight/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Inspector/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Noble/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Princess/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Greenman/Faceset1.png",
	"res://NinjaAdventure/Actor/Characters/Lion/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/MaskFrog/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Monk/Faceset.png",
	"res://NinjaAdventure/Actor/Characters/Skeleton/Faceset.png"
]
	
var index: int = 0
var status_placeholder: Array = [
	"Vida: ", "Mana: ", "Ataque: ", 
	"Ataque M??gico: ", "Defesa: ", "Velocidade: "
]

onready var buttons_container: Control = get_node("Buttons_Container")
onready var left: TextureButton = buttons_container.get_node("Left")
onready var right: TextureButton = buttons_container.get_node("Right")

onready var player_texture: Sprite = get_node("Player_Texture")
onready var player_faceset: TextureRect = get_node("Stats_Container/Faceset_Box/Class_Faceset")
onready var player_name: Label = get_node("Stats_Container/Class_Name")

onready var grid: GridContainer = get_node("Stats_Container/Grid")
 
export(Array, Array, String) var class_info

func _ready() -> void:
	update_visible_character()
	for button in buttons_container.get_children():
		button.connect("pressed", self, "button_pressed", [button.name])
		
		
func _process(_delta: float) -> void:
	var _left = left.set_disabled(true) if index == 0 else left.set_disabled(false)
	var _right = right.set_disabled(true) if index == class_info.size() - 1 else right.set_disabled(false)
	
	
func button_pressed(action: String) -> void:
	match action:
		"Left":
			if index > 0:
				index -= 1
				update_visible_character()
				
		"Right":
			if index < class_info.size() - 1:
				index += 1
				update_visible_character()
				
		"Select":
			Data.stored_data.class = class_image[index]
			Data.stored_data.weapon = class_weapon[index]
			Data.stored_data.faceset = class_faceset_image[index]
			Data.stored_data.cl_name = class_info[index].back()
			
			for stat in grid.get_child_count():
				Data.stored_data.stats.append(class_info[index][stat])
				
			Data.save()
			var _change_scene = get_tree().change_scene("res://scenes/scenario/cities/initial_city.tscn")
			
			
func update_visible_character() -> void:
	player_texture.texture = load(class_image[index]) 
	player_faceset.texture = load(class_faceset_image[index])
	player_name.text = class_info[index][6]
	var grid_size = grid.get_child_count()
	for status_index in grid_size:
		grid.get_child(status_index).text = status_placeholder[status_index] + class_info[index][status_index]
