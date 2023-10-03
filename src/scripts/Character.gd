
class_name Character

var jsonPath = "res://src/old-data/characterdata/"
var jsonData = {}
var internalName = ""

var name = ""
var health

func _init(charName: String):
	internalName = charName
	jsonPath = jsonPath + internalName
	jsonData = load_json(jsonPath)
	pass

func load_json(filePath: String):
	if FileAccess.file_exists(filePath):
		var jsonFile = FileAccess.open(filePath, FileAccess.READ)
		var parsedjson = JSON.parse_string(jsonFile.get_as_text())
		
		if parsedjson is Dictionary:
			return parsedjson
		else:
			print("Error reading character file for " + internalName)
		
	else:
		print("Character file not found for " + internalName)
