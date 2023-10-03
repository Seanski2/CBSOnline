extends TextureButton

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _pressed():
	if (CSSMenuVars.teamSelected <= 3) and not (CSSMenuVars.myTeam.has(get_meta("CharacterId"))):
		CSSMenuVars.myTeam[CSSMenuVars.teamSelected] = get_meta("CharacterId");
		CSSMenuVars.teamSelected += 1;
		$"../../Undo".disabled = false;
		$"../../Reset".disabled = false;
		$"../../SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
