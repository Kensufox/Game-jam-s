extends Node
@onready var sprite: Sprite2D = $Sprite2D

func _on_body_entered(body: Node2D) -> void:
	$"../../../../../../Left/LeftArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", true)
	$"../../../../../../Right/RightArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", false)
	sprite.texture = load("res://asset/element/blank_button_pressed_32x32.png")
	

func _on_body_exited(body: Node2D) -> void:
	$"../../../../../../Left/LeftArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", false)
	$"../../../../../../Right/RightArea/Tiles/Interactif/Link1/Bridge/Bridge".set_deferred("disabled", true)
	sprite.texture = load("res://asset/element/blank_button_32x32.png")
