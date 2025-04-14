extends Node

var zone_gauche := false
var zone_droite := false

func redirection():
	if zone_droite and zone_gauche:  
		get_tree().change_scene_to_file("res://MainMenu/MainMenu.tscn")
