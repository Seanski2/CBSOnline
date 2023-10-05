
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
var magic
var attack
var defense
var magAttack
var magDefense

var health

func _init(charName: String):
	
	internalName = charName
	
	jsonPath = jsonPath + internalName
	jsonData = load_json(jsonPath)
	
	name = jsonData["name"]
	maxHealth = jsonData[name]["baseStats"]["health"]
	speed = jsonData[name]["baseStats"]["speed"]
	magic = jsonData[name]["baseStats"]["magic"]
	attack = jsonData[name]["baseStats"]["attack"]
	defense = jsonData[name]["baseStats"]["defense"]
	magAttack = jsonData[name]["baseStats"]["magicAttack"]
	magDefense = jsonData[name]["baseStats"]["magicDefense"]
	
	health = maxHealth
	

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

func basicAttack(char: Character, isPhys: bool = true, basePower: int = 4):
	var attackStat
	var defenseStat
	if isPhys:
		attackStat = attack
		defenseStat = char.defense
	else:
		attackStat = magAttack
		defenseStat = char.magDefense
	var damage = (9 * basePower * attackStat)/defenseStat
	char.health -= damage
