extends Control

class_name Card

@export var tween_time_to_turn : float = 0.25

var pair_number : int = 0
var pair_found : bool = false;
var is_turned_up : bool = false;

signal is_clicked(card)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Image.texture = ImageManager.get_image(pair_number)
	$ReverseImage.visible = !is_turned_up


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if !pair_found && !is_turned_up:
		is_clicked.emit(self)

func turn_card():
	is_turned_up = !is_turned_up
	
	var tween_rotate_card = create_tween()
	tween_rotate_card.tween_property(self, "scale:x", 0, tween_time_to_turn)
	await tween_rotate_card.finished
	
	$ReverseImage.visible = !is_turned_up
	
	var tween_rotate_card_revert = create_tween()
	tween_rotate_card_revert.tween_property(self, "scale:x", 1, tween_time_to_turn)
	await tween_rotate_card_revert.finished


func _on_resized():
	# adjust pivot position
	self.pivot_offset = Vector2(self.size.x / 2, self.size.y / 2)
