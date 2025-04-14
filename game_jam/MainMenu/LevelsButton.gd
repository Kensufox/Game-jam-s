extends TextureButton

func _pressed():
	print("click")
	get_tree().change_scene_to_file("res://Level/Scene/LevelOne.tscn")
