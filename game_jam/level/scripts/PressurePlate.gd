extends Node

func _on_body_entered(body: Node2D) -> void:
	$"../Bridge/Bridge".set_deferred("disabled", not $"../Bridge/Bridge".disabled)
	
func _on_body_exited(body: Node2D) -> void:
	$"../Bridge/Bridge".set_deferred("disabled", not $"../Bridge/Bridge".disabled)
