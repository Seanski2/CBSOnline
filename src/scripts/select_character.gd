extends TextureButton

func _pressed():
	if (CSSMenuVars.teamSelected <= 3) and not (CSSMenuVars.myTeam.has(get_meta("CharacterId"))):
		
		var sfx = load("res://Assets/Sounds/SFX/select.wav")
		var selectionObjects = [
			$"../../Selection Indications/Selection 1",
			$"../../Selection Indications/Selection 2", 
			$"../../Selection Indications/Selection 3", 
			$"../../Selection Indications/Selection 4"
		];
		var characterDisplays = [
			$"../../Character Displays/Char 1",
			$"../../Character Displays/Char 2", 
			$"../../Character Displays/Char 3", 
			$"../../Character Displays/Char 4"
		];
		
		selectionObjects[CSSMenuVars.teamSelected].set_position(self.get_screen_position());
		selectionObjects[CSSMenuVars.teamSelected].visible = true;
		
		var charData = Character.new(get_meta("CharacterId") + ".json");
		
		characterDisplays[CSSMenuVars.teamSelected].set_texture(load("res://Assets/Sprites/Characters/" + charData.jsonData.sprite));
		
		CSSMenuVars.myTeam[CSSMenuVars.teamSelected] = charData;
		CSSMenuVars.teamSelected += 1;
		if CSSMenuVars.teamSelected == 4:
			$"../../Ready".disabled = false;
		$"../../Undo".disabled = false;
		$"../../Reset".disabled = false;
		$"../../SFX".playing = true;
		
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
