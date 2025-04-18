extends Node

var zone_gauche := false
var zone_droite := false
var cpt := 1

var invert_controls_left = false
var invert_controls_right = false

func reset():
		var zone_gauche := false
		var zone_droite := false
		cpt +=1

func redirection():
	if zone_droite and zone_gauche and cpt == 1:  
		get_tree().change_scene_to_file("res://level/scene/LevelTwo.tscn")
		reset()
	if zone_droite and zone_gauche and cpt == 2:  
		get_tree().change_scene_to_file("res://level/scene/LevelThree.tscn")
		reset()
	if zone_droite and zone_gauche and cpt == 3:  
		get_tree().change_scene_to_file("res://Level/scene/LevelFour.tscn")
		reset()
	if zone_droite and zone_gauche and cpt == 4:  
		get_tree().change_scene_to_file("res://MainMenu/MainMenu.tscn")
		reset()
