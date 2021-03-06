extends Node

const FILE_NAME = "res://save_data.save"

var selected_class_texture: Image
var selected_class_faceset: Image
var selected_weapon: String
var selected_class_stats: Array

var stored_data: Dictionary = {
	"class": selected_class_texture,
	"faceset": selected_class_faceset,
	"weapon": selected_weapon,
	"stats": selected_class_stats
}

func save() -> void:
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(stored_data))
	file.close()
	
	
func loadData() -> void:
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			stored_data = data
