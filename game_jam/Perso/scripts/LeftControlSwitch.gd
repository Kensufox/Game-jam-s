extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("test")
	VariableGlobale.invert_controls_left = not VariableGlobale.invert_controls_left
	$CollisionShape2D.set_deferred("disabled", true)
