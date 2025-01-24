extends Node

######################################################################################
######################             FLAGS               ###############################
######################################################################################
var image_flag_Argentina = preload("res://assets/pair_collections/flags/Argentina.png")
var image_flag_Australia = preload("res://assets/pair_collections/flags/Australia.png")
var image_flag_Belgium = preload("res://assets/pair_collections/flags/Belgium.png")
var image_flag_Brazil = preload("res://assets/pair_collections/flags/Brazil.png")
var image_flag_Canada = preload("res://assets/pair_collections/flags/Canada.png")
var image_flag_Chile = preload("res://assets/pair_collections/flags/Chile.png")
var image_flag_China = preload("res://assets/pair_collections/flags/China.png")
var image_flag_Colombia = preload("res://assets/pair_collections/flags/Colombia.png")
var image_flag_Czech = preload("res://assets/pair_collections/flags/Czech.png")
var image_flag_Egypt = preload("res://assets/pair_collections/flags/Egypt.png")
var image_flag_Finland = preload("res://assets/pair_collections/flags/Finland.png")
var image_flag_France = preload("res://assets/pair_collections/flags/France.png")
var image_flag_Germany = preload("res://assets/pair_collections/flags/Germany.png")
var image_flag_Ghana = preload("res://assets/pair_collections/flags/Ghana.png")
var image_flag_India = preload("res://assets/pair_collections/flags/India.png")
var image_flag_Indonesia = preload("res://assets/pair_collections/flags/Indonesia.png")
var image_flag_Italia = preload("res://assets/pair_collections/flags/Italia.png")
var image_flag_Japan = preload("res://assets/pair_collections/flags/Japan.png")
var image_flag_Korea = preload("res://assets/pair_collections/flags/Korea.png")
var image_flag_KSA = preload("res://assets/pair_collections/flags/KSA.png")
var image_flag_Mexico = preload("res://assets/pair_collections/flags/Mexico.png")
var image_flag_Nigeria = preload("res://assets/pair_collections/flags/Nigeria.png")
var image_flag_Pakistan = preload("res://assets/pair_collections/flags/Pakistan.png")
var image_flag_Portugal = preload("res://assets/pair_collections/flags/Portugal.png")
var image_flag_Russia = preload("res://assets/pair_collections/flags/Russia.png")
var image_flag_SouthAfrica = preload("res://assets/pair_collections/flags/SouthAfrica.png")
var image_flag_Spain = preload("res://assets/pair_collections/flags/Spain.png")
var image_flag_Sweden = preload("res://assets/pair_collections/flags/Sweden.png")
var image_flag_Switzerland = preload("res://assets/pair_collections/flags/Switzerland.png")
var image_flag_Thailand = preload("res://assets/pair_collections/flags/Thailand.png")
var image_flag_Turkey = preload("res://assets/pair_collections/flags/Turkey.png")
var image_flag_UK = preload("res://assets/pair_collections/flags/UK.png")
var image_flag_Ukraine = preload("res://assets/pair_collections/flags/Ukraine.png")
var image_flag_Uruguay = preload("res://assets/pair_collections/flags/Uruguay.png")
var image_flag_USA = preload("res://assets/pair_collections/flags/USA.png")


var image_flags = [
image_flag_Argentina,
image_flag_Australia,
image_flag_Belgium,
image_flag_Brazil,
image_flag_Canada,
image_flag_Chile,
image_flag_China,
image_flag_Colombia,
image_flag_Czech,
image_flag_Egypt,
image_flag_Finland,
image_flag_France,
image_flag_Germany,
image_flag_Ghana,
image_flag_India,
image_flag_Indonesia,
image_flag_Italia,
image_flag_Japan,
image_flag_Korea,
image_flag_KSA,
image_flag_Mexico,
image_flag_Nigeria,
image_flag_Pakistan,
image_flag_Portugal,
image_flag_Russia,
image_flag_SouthAfrica,
image_flag_Spain,
image_flag_Sweden,
image_flag_Switzerland,
image_flag_Thailand,
image_flag_Turkey,
image_flag_UK,
image_flag_Ukraine,
image_flag_Uruguay,
image_flag_USA
]

func get_image(index : int ) -> Resource:
	return image_flags[index]
