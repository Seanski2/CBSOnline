extends TextureButton

func _pressed():
	CSSMenuVars.teamSelected = 0;
	CSSMenuVars.myTeam = ["null", "null", "null", "null"];
	$"../Selection Indications/Selection 1".visible = false;
	$"../Selection Indications/Selection 2".visible = false;
	$"../Selection Indications/Selection 3".visible = false;
	$"../Selection Indications/Selection 4".visible = false;
	$"../Character Displays/Char 1".set_texture(load("res://Assets/Sprites/Characters/Squidward.png"));
	$"../Character Displays/Char 2".set_texture(load("res://Assets/Sprites/Characters/Squidward.png"));
	$"../Character Displays/Char 3".set_texture(load("res://Assets/Sprites/Characters/Squidward.png"));
	$"../Character Displays/Char 4".set_texture(load("res://Assets/Sprites/Characters/Squidward.png"));
	$"../Undo".disabled = true;
	$"../Ready".disabled = true;
	disabled = true
	$"SFX".playing = true;
	print(CSSMenuVars.teamSelected)
	print(CSSMenuVars.myTeam)
