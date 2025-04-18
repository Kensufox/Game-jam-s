extends Node

var left_area := false
var right_area := false
var invert_controls_left = false
var invert_controls_right = false

func reset():
		var left_area := false
		var right_area := false
		var invert_controls_left = false
		var invert_controls_right = false

func redirection(name: String):
	if left_area and right_area:
		match name:
			"LevelOne":
				get_tree().change_scene_to_file("res://Level/scene/LevelTwo.tscn")
				reset()
			"LevelTwo":
				get_tree().change_scene_to_file("res://Level/scene/LevelThree.tscn")
				reset()
			"LevelThree":
				get_tree().change_scene_to_file("res://Level/scene/LevelFour.tscn")
				reset()
			"LevelFour":
				get_tree().change_scene_to_file("res://MainMenu/MainMenu.tscn")
				reset()
