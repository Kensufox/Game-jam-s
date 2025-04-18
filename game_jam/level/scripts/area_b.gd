extends Area2D

func _on_body_entered(body: Node2D) -> void:
	VariableGlobale.right_area = true
	await get_tree().create_timer(0.1).timeout
	VariableGlobale.redirection($"../../../..".name)

func _on_body_exited(body: Node2D) -> void:
	VariableGlobale.right_area = false
