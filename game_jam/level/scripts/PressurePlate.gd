extends Node

func _on_body_entered(body: Node2D) -> void:
	#var path = "../"+name.replace("PressurePlate", "")+"/Bridge/Bridge"
	
	$"../Bridge/Bridge".set_deferred("disabled", not $"../Bridge/Bridge".disabled)
	print($"../Bridge/Bridge".disabled)
	
func _on_body_exited(body: Node2D) -> void:
	#var path = "../"+name.replace("PressurePlate", "")+"/Bridge/Bridge"
	
	$"../Bridge/Bridge".set_deferred("disabled", not $"../Bridge/Bridge".disabled)
	print($"../Bridge/Bridge".disabled)
