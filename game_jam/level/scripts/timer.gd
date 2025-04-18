extends Label

var countdown := 6
#temps minimum réussit 6 secondes

func _ready():
	# Style initial
	add_theme_color_override("font_color", Color.RED)
	add_theme_font_size_override("font_size", 30)
	horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	autowrap_mode = TextServer.AUTOWRAP_WORD
	set_timer_text(countdown)

	start_timer()

func start_timer():
	for i in range(countdown, 0, -1):
		set_timer_text(i)
		await get_tree().create_timer(1.0).timeout

	set_timer_text(0)
	print("cheh")
	get_tree().reload_current_scene()

func set_timer_text(time_left: int) -> void:
	text = "Temps restant avant décès :\n" + str(time_left) + "s"
