extends Label

func _ready():
	text = ("%.2f" % GlobalTimer.time)+" s"
