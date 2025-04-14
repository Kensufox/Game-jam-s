extends Node

func _on_body_entered(body: Node2D) -> void:
	$"../HitBox Water/Bridge".set_deferred("disabled", true)
	print("test")

func _on_body_exited(body: Node2D) -> void:
	$"../HitBox Water/Bridge".set_deferred("disabled", true)
