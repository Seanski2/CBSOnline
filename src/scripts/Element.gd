
class_name Element

var jsonPath = "res://src/data/elements/"
var jsonData = {}
var internalName = ""

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
			print("Error reading element file for " + internalName)
		
	else:
		print("Element file not found for " + internalName)
