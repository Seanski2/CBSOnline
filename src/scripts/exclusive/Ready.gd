extends TextureButton

func _pressed():
	BattleVars.allies["1"]["char"] = CSSMenuVars.myTeam[0]
	BattleVars.allies["2"]["char"] = CSSMenuVars.myTeam[1]
	BattleVars.allies["3"]["char"] = CSSMenuVars.myTeam[2]
	BattleVars.allies["4"]["char"] = CSSMenuVars.myTeam[3]
	
	get_tree().change_scene_to_file ("res://src/scenes/vs.tscn")
