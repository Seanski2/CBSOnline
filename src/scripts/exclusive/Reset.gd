extends TextureButton

func _pressed():
	CSSMenuVars.teamSelected = 0;
	CSSMenuVars.myTeam = ["null", "null", "null", "null"];
	$"../Selection Indications/Selection 1".visible = false;
	$"../Selection Indications/Selection 2".visible = false;
	$"../Selection Indications/Selection 3".visible = false;
	$"../Selection Indications/Selection 4".visible = false;
	$"../Undo".disabled = true;
	disabled = true
	$"../SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
