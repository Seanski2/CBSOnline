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
		
	selectionObjects[CSSMenuVars.teamSelected].visible = false;
	
	if (CSSMenuVars.teamSelected < 1):
		disabled = true;
		$"../Reset".disabled = true;
	$"../SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
