extends Node
@onready var sprite: Sprite2D = $Sprite2D
@onready var leftbridge: CollisionShape2D  = $"../../../../../Left/LeftArea/Tiles/Interactif/Bridge/Bridge"
@onready var rightbridge: CollisionShape2D = $"../../../../../Right/RightArea/Tiles/Interactif/Bridge/Bridge"
@onready var leftsprite: Sprite2D  = $"../../../../../Left/LeftArea/Tiles/Interactif/Bridge/Sprite2D"
@onready var rightsprite: Sprite2D = $"../../../../../Right/RightArea/Tiles/Interactif/Bridge/Sprite2D"

func _on_body_entered(body: Node2D) -> void:
	leftbridge.set_deferred("disabled", true)
	rightbridge.set_deferred("disabled", false)
	leftsprite.texture = load("res://asset/element/wood_bridge_32x32.png")
	rightsprite.texture = load("res://asset/element/wood_bridge_ghost_32x32.png")
	sprite.texture = load("res://asset/element/blank_button_pressed_32x32.png")
	

func _on_body_exited(body: Node2D) -> void:
	leftbridge.set_deferred("disabled", false)
	rightbridge.set_deferred("disabled", true)
	leftsprite.texture = load("res://asset/element/wood_bridge_ghost_32x32.png")
	rightsprite.texture = load("res://asset/element/wood_bridge_32x32.png")
	sprite.texture = load("res://asset/element/blank_button_32x32.png")
