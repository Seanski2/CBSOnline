extends TextureButton

func _pressed():
	CSSMenuVars.teamSelected = 0
	CSSMenuVars.myTeam = ["null", "null", "null", "null"]
	get_tree().change_scene_to_file(get_meta("loadScene"))
