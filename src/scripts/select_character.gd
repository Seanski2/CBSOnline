extends TextureButton

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _pressed():
	if (CSSMenuVars.teamSelected <= 3) and not (CSSMenuVars.myTeam.has(get_meta("CharacterId"))):
		
		var sfx = load("res://Assets/Sounds/SFX/select.wav")
		var selectionObjects = [
			$"../../Selection Indications/Selection 1",
			$"../../Selection Indications/Selection 2", 
			$"../../Selection Indications/Selection 3", 
			$"../../Selection Indications/Selection 4"
		];
		
		selectionObjects[CSSMenuVars.teamSelected].set_position(self.get_screen_position());
		selectionObjects[CSSMenuVars.teamSelected].visible = true;

		
		CSSMenuVars.myTeam[CSSMenuVars.teamSelected] = get_meta("CharacterId");
		CSSMenuVars.teamSelected += 1;
		$"../../Undo".disabled = false;
		$"../../Reset".disabled = false;
		$"../../SFX".playing = true;
		
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
