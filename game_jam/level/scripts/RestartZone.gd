extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "LeftPlayer" or body.name == "RightPlayer":
		print("test")
		get_tree().reload_current_scene()
