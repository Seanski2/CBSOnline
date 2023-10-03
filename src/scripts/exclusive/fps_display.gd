extends CheckBox

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../FPS Display".set_text("FPS: " + str(Engine.get_frames_per_second()));
		$"../../FPS Display".visible = true
	else:
		$"../../FPS Display".visible = false
