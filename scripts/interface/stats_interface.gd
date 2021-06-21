extends TextureRect
class_name StatsInterface

onready var faceset: TextureRect = get_node("Faceset_Box/Faceset")
onready var cl_name: Label = get_node("Container/VBoxContainer/Class_Name")
onready var stats: GridContainer = get_node("Status_Container/Grid")

var placeholder_stats: Array = [
	"Vida: ", "Mana: ", "Ataque: ",
	"Ataque Magico: ", "Defesa: ", "Velocidade: "
]

func _ready():
	Data.loadData()
	faceset.texture = load(Data.stored_data.faceset)
	for status_index in stats.get_child_count():
		stats.get_child(status_index).text = placeholder_stats[status_index] + Data.stored_data.stats[status_index]
		
	cl_name.text = "Classe \n" + Data.stored_data.cl_name
