extends Node2D

var pair_number : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pair_number = randi_range(0, 34)
	$Image.texture = ImageManager.get_image(pair_number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var tween_rotate_card = create_tween()
			tween_rotate_card.tween_property(self, "scale:x", 0, 0.5)
			await tween_rotate_card.finished
			
			$ReverseImage.visible = !$ReverseImage.visible
			
			var tween_rotate_card_revert = create_tween()
			tween_rotate_card_revert.tween_property(self, "scale:x", 1, 0.5)
			await tween_rotate_card_revert.finished
			
			
			
