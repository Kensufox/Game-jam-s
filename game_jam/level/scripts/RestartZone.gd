extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player1" or body.name == "Player2":
		print("test")
		get_tree().reload_current_scene()
