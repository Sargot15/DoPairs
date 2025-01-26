extends Control

var pair_number : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pair_number = randi_range(0, 34)
	$Image.texture = ImageManager.get_image(pair_number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	var tween_rotate_card = create_tween()
	tween_rotate_card.tween_property(self, "scale:x", 0, 0.5)
	await tween_rotate_card.finished
	
	$ReverseImage.visible = !$ReverseImage.visible
	
	var tween_rotate_card_revert = create_tween()
	tween_rotate_card_revert.tween_property(self, "scale:x", 1, 0.5)
	await tween_rotate_card_revert.finished


func _on_resized():
	# adjust pivot position
	self.pivot_offset = Vector2(self.size.x / 2, self.size.y / 2)
