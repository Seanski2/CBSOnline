extends TextureButton

func _pressed():
	get_tree().change_scene_to_file(get_meta("loadScene"))
