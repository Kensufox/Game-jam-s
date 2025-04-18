extends Node2D

@onready var main = $"../../../../.." #get_tree().get_root().get_node("main")
@onready var projectile = load("res://Level/scene/Projectile.tscn")

func shoot() -> void:
	$Canon.texture = load("res://asset/element/ballista_half_charged.png")
	var instance = projectile.instantiate()
	await get_tree().create_timer(0.1).timeout
	instance.dir = rotation
	instance.spawnPos = global_position
	instance.spawnRot = rotation
	$Canon.texture = load("res://asset/element/ballista_charged.png")
	await get_tree().create_timer(0.1).timeout
	main.add_child.call_deferred(instance)
	$Canon.texture = load("res://asset/element/ballista_empty.png")

func _on_timer_timeout() -> void:
	shoot()
