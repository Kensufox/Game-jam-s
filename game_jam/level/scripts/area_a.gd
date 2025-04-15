extends Area2D

func _on_body_entered(body: Node2D) -> void:
	VariableGlobale.zone_gauche = true
	await get_tree().create_timer(0.1).timeout
	VariableGlobale.redirection()

func _on_body_exited(body: Node2D) -> void:
	VariableGlobale.zone_gauche = false
