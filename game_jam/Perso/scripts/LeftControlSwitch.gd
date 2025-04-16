extends Area2D

func _on_body_entered(body: Node2D) -> void:
	VariableGlobale.invert_controls_left = not VariableGlobale.invert_controls_left
	$sprite.texture = load("res://asset/map/rotate_button_pressed_32x32.png")


func _on_body_exited(body: Node2D) -> void:
	$sprite.texture = load("res://asset/map/rotate_button_32x32.png")
	#$CollisionShape2D.set_deferred("disabled", true)
