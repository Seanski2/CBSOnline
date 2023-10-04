extends TextureButton

func _pressed():
	CSSMenuVars.teamSelected -= 1;
	CSSMenuVars.myTeam[CSSMenuVars.teamSelected] = "null";
	
	var selectionObjects = [
		$"../Selection Indications/Selection 1",
		$"../Selection Indications/Selection 2", 
		$"../Selection Indications/Selection 3", 
		$"../Selection Indications/Selection 4"
	];
	var characterDisplays = [
		$"../Character Displays/Char 1",
		$"../Character Displays/Char 2", 
		$"../Character Displays/Char 3", 
		$"../Character Displays/Char 4"
	];
	var elementDisplays = [
		characterDisplays[CSSMenuVars.teamSelected].get_node("Element 1"),
		characterDisplays[CSSMenuVars.teamSelected].get_node("Element 2"),
	]
	
	elementDisplays[0].visible = false
	elementDisplays[1].visible = false
	
	characterDisplays[CSSMenuVars.teamSelected].get_node("Name").text = "???"
		
	selectionObjects[CSSMenuVars.teamSelected].visible = false;
	characterDisplays[CSSMenuVars.teamSelected].set_texture(load("res://Assets/Sprites/Characters/Empty.png"));
	
	if (CSSMenuVars.teamSelected < 1):
		disabled = true;
		$"../Reset".disabled = true;
	if CSSMenuVars.teamSelected < 4:
		$"../Ready".disabled = true;
	$"SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
