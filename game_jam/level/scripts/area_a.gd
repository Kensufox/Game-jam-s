extends Area2D

func _on_body_entered(body: Node2D) -> void:
	VariableGlobale.zone_gauche = true
	VariableGlobale.redirection()


func _on_body_exited(body: Node2D) -> void:
	VariableGlobale.zone_gauche = false
