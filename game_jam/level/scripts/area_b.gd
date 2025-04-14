extends Area2D

func _on_body_entered(body: Node2D) -> void:
	VariableGlobale.zone_droite = true
	print(VariableGlobale.zone_droite)
	VariableGlobale.redirection()


func _on_body_exited(body: Node2D) -> void:
	VariableGlobale.zone_droite = false
