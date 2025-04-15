extends Node

func _on_body_entered(body: Node2D) -> void:
	if body.name == "LeftPlayer":
		$"../Water/Bridge/Bridge".set_deferred("disabled", true)
		print($"../Water/Bridge/Bridge".disabled)
	#else:
		
	

func _on_body_exited(body: Node2D) -> void:
	$"../Water/Bridge/Bridge".set_deferred("disabled", false)
	print($"../Water/Bridge/Bridge".disabled)

	
#$"../Water/Bridge/Bridge"$ "../../../../Right/RightArea/Tiles/Lava/Bridge/Bridge"
