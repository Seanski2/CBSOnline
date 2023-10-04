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
		var elementDisplays = [
			characterDisplays[CSSMenuVars.teamSelected].get_node("Element 1"),
			characterDisplays[CSSMenuVars.teamSelected].get_node("Element 2"),
		]
		
		selectionObjects[CSSMenuVars.teamSelected].set_position(self.get_screen_position());
		selectionObjects[CSSMenuVars.teamSelected].visible = true;
		
		var charData = Character.new(get_meta("CharacterId") + ".json");
		var elem1 = Element.new(charData.jsonData.element1 + ".json");
		var elem2 = Element.new(charData.jsonData.element2 + ".json");
		
		characterDisplays[CSSMenuVars.teamSelected].get_node("Name").text = charData.jsonData.displayName
		
		if not charData.jsonData.element1 == "none":
			elementDisplays[0].visible = true;
			elementDisplays[0].set_texture(load("res://Assets/Sprites/Symbols/Elements/" + elem1.jsonData.name + ".png"))
		
		if not charData.jsonData.element2 == "none":
			elementDisplays[1].visible = true;
			elementDisplays[1].set_texture(load("res://Assets/Sprites/Symbols/Elements/" + elem2.jsonData.name + ".png"))
		
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
