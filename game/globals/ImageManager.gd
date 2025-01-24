extends Node

var image_flag_germany = preload("res://assets/pair_collections/flags/Germany.png")
var image_flag_usa = preload("res://assets/pair_collections/flags/USA.png")

var image_flags = [image_flag_germany, image_flag_usa]

func get_image(index : int ) -> Resource:
	return image_flags[index]
