extends Area2D

#func _on_body_entered(body: Node2D) -> void:
#	await get_tree().create_timer(0.1).timeout
#	get_tree().reload_current_scene()

var bodies_inside: Array[Node] = []

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node) -> void:
	if not bodies_inside.has(body):
		bodies_inside.append(body)
	await get_tree().create_timer(0.1).timeout
	if bodies_inside.size() != 0:
		get_tree().reload_current_scene()

func _on_body_exited(body: Node) -> void:
	bodies_inside.erase(body)
