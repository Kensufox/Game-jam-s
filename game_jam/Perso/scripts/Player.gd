extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction := Vector2.ZERO
	
func _ready():
	TickManager.tick.connect(_on_tick)

func _physics_process(delta):
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")

	if direction.x != 0:
		direction.y = 0
	elif direction.y != 0:
		direction.x = 0
			
	if VariableGlobale.invert_controls_left:
		direction *= -1
		
func _on_tick():
	if direction != Vector2.ZERO:
		move_and_collide(direction.normalized() * 32)
		position = Vector2(round(position.x/32)*32, round(position.y/32)*32)
		set_animation(direction)
		print("player : ", name, " moved on tick")
	



func set_animation(direction):
	if direction.x > 0:
		animated_sprite_2d.flip_h = false
	elif direction.x < 0:
		animated_sprite_2d.flip_h = true

	#if direction:
	#	animated_sprite_2d.play("walk")
	#else:
	#	animated_sprite_2d.play("idle")
