extends TextureButton

func _pressed():
	VariableGlobale.reset()
	get_tree().change_scene_to_file("res://Level/Scene/LevelOne.tscn")
	GlobalTimer.restart_timer()
