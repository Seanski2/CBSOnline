extends Node

var p1chars = [Character.new("s011zee.json"), Character.new("s011zee.json"), Character.new("s011zee.json"), Character.new("s011zee.json")];
var p2chars = [Character.new("s011zee.json"), Character.new("s011zee.json"), Character.new("s011zee.json"), Character.new("s011zee.json")];
var rng = RandomNumberGenerator.new();

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func damage(isMelee: bool, basePower: int, element: Element, attack: int, defense: int, source: Character, damageTo: Character):
	var multiplier = 1
	multiplier *= randf_range(.93, 1.07)
	if rng.randi_range(1,100) <= 5:
		multiplier *= 1.5
	var dmg = round((9 * basePower * attack * multiplier)/defense)
	damageTo.takeDamage(dmg)
	return dmg
