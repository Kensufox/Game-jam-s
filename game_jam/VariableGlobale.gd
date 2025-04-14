extends Node

var zone_gauche := false
var zone_droite := false
var cpt := 1

func redirection():
	if zone_droite and zone_gauche and cpt == 1:  
		get_tree().change_scene_to_file("res://level/scene/LevelTwo.tscn")
		var zone_gauche := false
		var zone_droite := false
		cpt +=1
	if zone_droite and zone_gauche and cpt == 2:  
		get_tree().change_scene_to_file("res://level/scene/LevelThree.tscn")
		var zone_gauche := false
		var zone_droite := false
		cpt +=1
	if zone_droite and zone_gauche and cpt == 3:  
		get_tree().change_scene_to_file("res://level/scene/LevelThree.tscn")
		var zone_gauche := false
		var zone_droite := false
		cpt +=1
	if zone_droite and zone_gauche and cpt == 4:  
		get_tree().change_scene_to_file("res://level/scene/LevelThree.tscn")
		var zone_gauche := false
		var zone_droite := false
		cpt +=1
