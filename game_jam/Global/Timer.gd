extends Node

var running := false
var time := 0.0

func start_timer():
	running = true
	
func stop_timer():
	running = false
	
func reset_timer():
	time = 0.0
	
func restart_timer():
	stop_timer()
	reset_timer()
	start_timer()
	
func _process(delta):
	if running:
		time += delta
