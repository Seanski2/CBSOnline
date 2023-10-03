extends HSlider

func _value_changed(new_value):
	AudioServer.add_bus_effect(0, AudioEffectAmplify.new());
	AudioServer.get_bus_effect(0, 0).set_volume_db(-40 * ((100 - new_value) / 100));
