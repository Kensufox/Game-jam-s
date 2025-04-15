extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var time_since_move := 0.0

func _physics_process(delta: float) -> void:
	time_since_move += delta
	
	print("player : ", name, " time : ", time_since_move)

	if time_since_move >= VariableGlobale.move_cooldown:
		var direction := Vector2.ZERO
		direction.x = Input.get_axis("ui_left", "ui_right")
		direction.y = Input.get_axis("ui_up", "ui_down")

		if direction.x != 0:
			direction.y = 0
		elif direction.y != 0:
			direction.x = 0

		if direction != Vector2.ZERO:
			print("moved")
			move_and_collide(direction.normalized() * 32)
			position = Vector2(int(position.x), int(position.y))
			time_since_move = 0.0
			set_animation(direction)

func set_animation(direction):
	if direction.x > 0:
		animated_sprite_2d.flip_h = false
	elif direction.x < 0:
		animated_sprite_2d.flip_h = true

	# Tu peux ajouter ici des animations en fonction des directions si tu veux
	#if direction:
	#	animated_sprite_2d.play("walk")
	#else:
	#	animated_sprite_2d.play("idle")
