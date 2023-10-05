
class_name Character

#var jsonPath = "res://src/old-data/characterdata/"
var jsonPath = "res://src/data/characters/"
var jsonData = {}
var internalName = ""

var name = ""
var displayName
var element1
var element2

var maxHealth
var speed
var mp
var melee
var defense
var magic
var magDefense

var health

func _init(charName: String):
	
	internalName = charName
	
	jsonPath = jsonPath + internalName
	jsonData = load_json(jsonPath)
#
#	name = jsonData["name"]
#	maxHealth = jsonData[name]["baseStats"]["health"]
#	speed = jsonData[name]["baseStats"]["speed"]
#	mp = jsonData[name]["baseStats"]["magic"]
#	melee = jsonData[name]["baseStats"]["attack"]
#	defense = jsonData[name]["baseStats"]["defense"]
#	magic = jsonData[name]["baseStats"]["magicAttack"]
#	magDefense = jsonData[name]["baseStats"]["magicDefense"]
#
#	health = maxHealth
	

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

func basicAttack(char: Character, isMelee: bool = true, basePower: int = 4):
	var attackStat
	var defenseStat
	if isMelee:
		attackStat = melee
		defenseStat = char.defense
	else:
		attackStat = magic
		defenseStat = char.magDefense
	var damage = (9 * basePower * attackStat)/defenseStat
	char.health -= damage
