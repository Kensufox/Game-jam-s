extends CharacterBody2D

@export var SPEED = 2

var dir : float
var spawnPos : Vector2
var spawnRot : float
var zdex : int

func _ready():
	global_position = spawnPos
	global_rotation = spawnRot
	z_index = zdex

func _physics_process(delta):
	#velocity = Vector2(0, -SPEED).rotated(dir)
	move_and_collide(Vector2(0, -SPEED).rotated(dir))

func _on_area_2d_body_entered(body: Node2D) -> void:
	print(str(body.get_parent()))
	if str(body.get_parent()) == "Obstacle":
		print("test")

func _on_life_timeout() -> void:
	queue_free()
