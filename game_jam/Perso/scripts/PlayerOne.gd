extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var time_since_move := 0.0
var move_cooldown := 0.2

func _physics_process(delta: float) -> void:
	time_since_move += delta
	if time_since_move >= move_cooldown:
		var direction := Vector2.ZERO
		direction.x = Input.get_axis("ui_left", "ui_right")
		direction.y = Input.get_axis("ui_up", "ui_down")

		if direction.x != 0:
			direction.y = 0
		elif direction.y != 0:
			direction.x = 0
			
		if VariableGlobale.invert_controls_left:
			direction *= -1

		if direction != Vector2.ZERO:
			move_and_collide(direction.normalized() * 32)
			position = Vector2(round(position.x/32)*32, round(position.y/32)*32)
			time_since_move = 0.0
			set_animation(direction)

func set_animation(direction):
	if direction.x > 0:
		animated_sprite_2d.flip_h = false
	elif direction.x < 0:
		animated_sprite_2d.flip_h = true

	#if direction:
	#	animated_sprite_2d.play("walk")
	#else:
	#	animated_sprite_2d.play("idle")
