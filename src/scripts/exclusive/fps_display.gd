extends CheckBox

#Set Value from Global
func _ready():
	set_pressed(GameSettings.fpsShown) 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	GameSettings.fpsShown = button_pressed
	if button_pressed:
		$"../../FPS Display".set_text("FPS: " + str(Engine.get_frames_per_second()));
		$"../../FPS Display".visible = true
	else:
		$"../../FPS Display".visible = false
