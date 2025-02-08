extends Control

@export_range(7,35) var num_pairs: int = 35
@export var card_scene: PackedScene 
@export var card_separation: int = 4

@onready var grid_container: GridContainer = $"Full Board/GridPanel/CardsGrid"
@onready var grid_panel : Panel = $"Full Board/GridPanel"
@onready var label_time : Label = $"Full Board/TimerPanel/GameTimeLabel"
@onready var win_panel : Panel = $"Full Board/WinPanel"

var card_up_1 : Card = null
var card_up_2 : Card = null
var pairs_found : int = 0
var game_started : bool = false
var game_time : float = 0
var penalty_time : int = 0

func _ready():
	win_panel.visible = false
	generate_cards(num_pairs * 2)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if game_started:
		game_time += delta
	
	label_time.text = "Time: " + str(game_time + penalty_time).pad_decimals(0)

func generate_cards(num_cards):
	# clean board if existed
	clean_board()
		
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
		# connect to the is_clicked signal
		card.is_clicked.connect(_on_card_is_clicked)
	
	adjust_size(num_cards)
	
	initialize_game_vars()

func initialize_game_vars():
	game_started = false
	win_panel.visible = false
	game_time = 0
	penalty_time = 0
	
func clean_board():
	
	pairs_found = 0
	
	for child in grid_container.get_children():
		child.queue_free()


func adjust_size(num_cards):
	
	# calculate the number of colums of the grid
	var container_size_x = grid_panel.size.x
	var container_size_y = grid_panel.size.y

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

func _on_button_pressed():
	generate_cards(num_pairs * 2)

func _on_card_is_clicked(card):
	if card_up_1 == null:
		card_up_1 = card
		card_up_1.turn_card()
		
		# if it is the first card we mark the game as started
		if !game_started:
			game_started = true
		
		return
		
	if card_up_2 == null:
		card_up_2 = card
		card_up_2.turn_card()
		
		check_pair()

func check_pair():
	if card_up_1.pair_number == card_up_2.pair_number:
		# pair found, reset the cards to let the user pick another ones
		card_up_1 = null
		card_up_2 = null
		pairs_found += 1
		if (pairs_found == num_pairs):
			print("You win!!")
			win_panel.visible = true
			game_started = false
	else:
		# pair not found, show the cards for a moment before let the user to pick other cards
		$TimerToNextTry.start()
		
		# add a penalty on the game timer. The penalty is greater if the card was clicked many times
		penalty_time += card_up_1.tries_failed
		penalty_time += card_up_2.tries_failed

func _on_timer_to_next_try_timeout():
	card_up_1.turn_card()
	card_up_2.turn_card()
	card_up_1 = null
	card_up_2 = null


func _on_grid_panel_is_resized():
	adjust_size(num_pairs * 2)
