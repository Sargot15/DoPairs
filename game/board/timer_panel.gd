extends Panel

@onready var label_text = $GameTimeLabel

func _ready():
	label_text.add_theme_font_size_override("font_size", floor(size.y / 2))
	
func _notification(what):
	# adjust text size when the window size is changed
	if what == NOTIFICATION_RESIZED:
		if (label_text != null):
			label_text.add_theme_font_size_override("font_size", floor(size.y / 2))
