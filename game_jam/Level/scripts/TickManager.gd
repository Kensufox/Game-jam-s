extends Node

signal tick

@export var tick_interval := 0.1
var time_accumulator := 0.0

func _physics_process(delta: float) -> void:
	time_accumulator += delta
	if time_accumulator >= tick_interval:
		time_accumulator -= tick_interval
		emit_signal("tick")
