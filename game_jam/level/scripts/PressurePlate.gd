extends Node

func _on_body_entered(body: Node2D) -> void:
	$"../../../../../../Left/LeftArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", true)
	$"../../../../../../Right/RightArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", false)

func _on_body_exited(body: Node2D) -> void:
	$"../../../../../../Left/LeftArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", false)
	$"../../../../../../Right/RightArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", true)
