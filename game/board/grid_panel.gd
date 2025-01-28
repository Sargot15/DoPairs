extends Panel

signal is_resized()

@onready var grid_container: GridContainer = $"CardsGrid"

func _notification(what):
	# adjust size when the window size is changed
	if what == NOTIFICATION_RESIZED:
		if (grid_container != null):
			print("emit signal")
			is_resized.emit()
