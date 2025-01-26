extends Control

@export var card_scene: PackedScene 
@export_range(7,35) var num_pairs: int = 35
@export var card_separation: int = 4

@onready var grid_container: GridContainer = $CardsGrid

func _ready():
	generate_cards(num_pairs * 2)

func generate_cards(num_cards):

   # clean board if existed
	for child in grid_container.get_children():
		child.queue_free()
		
	# add new cards
	var cards = []
	for i in range(num_pairs):
		var card = card_scene.instantiate()
		card.pair_number = i
		cards.append(card)
		
		card = card_scene.instantiate()
		card.pair_number = i
		cards.append(card)
		
	# randomize cards order
	randomize()
	cards.shuffle()
	
	# add cards to the board
	for card in cards:
		grid_container.add_child(card)
	
	adjust_size(num_cards)


func adjust_size(num_cards):
	
	# calculate the number of colums of the grid
	var container_size_x = get_viewport().get_visible_rect().size.x
	var container_size_y = get_viewport().get_visible_rect().size.y

	var relation_col_row = container_size_x / container_size_y
	
	var columns = ceil(sqrt(num_cards * relation_col_row))
	grid_container.columns = columns

	# adjust card size
	var rows = ceil (num_cards / columns)
	var card_size_by_x = floor((container_size_x - (columns * card_separation)) / columns)
	var card_size_by_y = floor((container_size_y - (rows * card_separation)) / rows)
	
	var card_size = min(card_size_by_x, card_size_by_y)
	
	for card in grid_container.get_children():
		card.custom_minimum_size = Vector2(card_size, card_size)
		
		
func _notification(what):
	# adjust size when the window size is changed
	if what == NOTIFICATION_RESIZED:
		if (grid_container != null):
			adjust_size(num_pairs * 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	generate_cards(num_pairs * 2)
