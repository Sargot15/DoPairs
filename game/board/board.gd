extends Control

@export var card_scene: PackedScene 
@export var max_cards: int = 50
@export var card_separation: int = 4

@onready var grid_container: GridContainer = $CardsGrid

func _ready():
	generate_cards(max_cards)
	#generate_cards(randi_range(3, max_cards))

func generate_cards(num_cards):

	# add new cards
	for i in range(num_cards):
		var card = card_scene.instantiate()
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
			adjust_size(max_cards)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
