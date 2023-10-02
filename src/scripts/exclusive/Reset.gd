extends TextureButton

func _pressed():
	CSSMenuVars.teamSelected = 0;
	CSSMenuVars.myTeam = ["null", "null", "null", "null"];
	$"../Undo".disabled = true;
	disabled = true
	$"../SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
