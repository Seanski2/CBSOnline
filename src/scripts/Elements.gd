
class_name Elements

enum Element {astral, aura, darkness, earth, electric, fire, ice, light, magic, metal, nature, paint, physical, sound, toxic, undead, water, wind, none}

var jsonPath = "res://src/data/elements/"
var jsonData = {}
var internalName = ""
var elem

func _init(name: String):
	internalName = name
	elem = Element.keys()[Element.get(internalName)]
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
