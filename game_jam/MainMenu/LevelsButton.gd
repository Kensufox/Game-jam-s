extends TextureButton

func _pressed():
	get_tree().change_scene_to_file("res://Level/Scene/LevelOne.tscn")
	VariableGlobale.reset()
