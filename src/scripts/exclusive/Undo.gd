extends TextureButton

func _pressed():
	CSSMenuVars.teamSelected -= 1;
	CSSMenuVars.myTeam[CSSMenuVars.teamSelected] = "null";
	if (CSSMenuVars.teamSelected < 1):
		disabled = true;
		$"../Reset".disabled = true;
	$"../SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
