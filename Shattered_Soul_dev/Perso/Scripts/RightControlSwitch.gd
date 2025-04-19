extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("test")
	VariableGlobale.invert_controls_right = not VariableGlobale.invert_controls_right
	$CollisionShape2D.set_deferred("disabled", true)
