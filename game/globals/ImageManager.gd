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
var image_flag_Italy = preload("res://assets/pair_collections/flags/Italy.png")
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
image_flag_USA,
image_flag_Germany,
image_flag_Brazil,
image_flag_China,
image_flag_France,
image_flag_India,
image_flag_Japan,
image_flag_UK,
image_flag_Russia,
image_flag_Italy,
image_flag_Korea,
image_flag_Indonesia,
image_flag_Mexico,
image_flag_Canada,
image_flag_Spain,
image_flag_KSA,
image_flag_Turkey,
image_flag_Australia,
image_flag_Argentina,
image_flag_Nigeria,
image_flag_Portugal,
image_flag_Switzerland,
image_flag_Chile,
image_flag_SouthAfrica,
image_flag_Sweden,
image_flag_Uruguay,
image_flag_Thailand,
image_flag_Egypt,
image_flag_Czech,
image_flag_Pakistan,
image_flag_Colombia,
image_flag_Belgium,
image_flag_Ukraine,
image_flag_Ghana,
image_flag_Finland
]

######################################################################################
######################            POKEMON              ###############################
######################################################################################
var image_pokemon_Abra = preload("res://assets/pair_collections/pokemon/Abra.png")
var image_pokemon_Bulbasur = preload("res://assets/pair_collections/pokemon/Bulbasur.png")
var image_pokemon_Chansey = preload("res://assets/pair_collections/pokemon/Chansey.png")
var image_pokemon_Charizard = preload("res://assets/pair_collections/pokemon/Charizard.png")
var image_pokemon_Charmander = preload("res://assets/pair_collections/pokemon/Charmander.png")
var image_pokemon_Chikorita = preload("res://assets/pair_collections/pokemon/Chikorita.png")
var image_pokemon_Cubone = preload("res://assets/pair_collections/pokemon/Cubone.png")
var image_pokemon_Cyndaquill = preload("res://assets/pair_collections/pokemon/Cyndaquill.png")
var image_pokemon_Digglet = preload("res://assets/pair_collections/pokemon/Digglet.png")
var image_pokemon_Ditto = preload("res://assets/pair_collections/pokemon/Ditto.png")
var image_pokemon_Dragonite = preload("res://assets/pair_collections/pokemon/Dragonite.png")
var image_pokemon_Eevee = preload("res://assets/pair_collections/pokemon/Eevee.png")
var image_pokemon_Gengar = preload("res://assets/pair_collections/pokemon/Gengar.png")
var image_pokemon_Gyarados = preload("res://assets/pair_collections/pokemon/Gyarados.png")
var image_pokemon_Jigglypuff = preload("res://assets/pair_collections/pokemon/Jigglypuff.png")
var image_pokemon_Lickitung = preload("res://assets/pair_collections/pokemon/Lickitung.png")
var image_pokemon_Machop = preload("res://assets/pair_collections/pokemon/Machop.png")
var image_pokemon_Meowth = preload("res://assets/pair_collections/pokemon/Meowth.png")
var image_pokemon_Mew = preload("res://assets/pair_collections/pokemon/Mew.png")
var image_pokemon_Mewtwo = preload("res://assets/pair_collections/pokemon/Mewtwo.png")
var image_pokemon_MrMime = preload("res://assets/pair_collections/pokemon/MrMime.png")
var image_pokemon_Oddish = preload("res://assets/pair_collections/pokemon/Oddish.png")
var image_pokemon_Onyx = preload("res://assets/pair_collections/pokemon/Onyx.png")
var image_pokemon_Pichu = preload("res://assets/pair_collections/pokemon/Pichu.png")
var image_pokemon_Pikachu = preload("res://assets/pair_collections/pokemon/Pikachu.png")
var image_pokemon_Ponyta = preload("res://assets/pair_collections/pokemon/Ponyta.png")
var image_pokemon_Psyduck = preload("res://assets/pair_collections/pokemon/Psyduck.png")
var image_pokemon_Slowpoke = preload("res://assets/pair_collections/pokemon/Slowpoke.png")
var image_pokemon_Snorlax = preload("res://assets/pair_collections/pokemon/Snorlax.png")
var image_pokemon_Squirtle = preload("res://assets/pair_collections/pokemon/Squirtle.png")
var image_pokemon_Tauros = preload("res://assets/pair_collections/pokemon/Tauros.png")
var image_pokemon_Togepi = preload("res://assets/pair_collections/pokemon/Togepi.png")
var image_pokemon_Totodile = preload("res://assets/pair_collections/pokemon/Totodile.png")
var image_pokemon_Vulpix = preload("res://assets/pair_collections/pokemon/Vulpix.png")
var image_pokemon_Wobbuffet = preload("res://assets/pair_collections/pokemon/Wobbuffet.png")

var image_pokemon = [
image_pokemon_Charizard,
image_pokemon_Pikachu,
image_pokemon_Bulbasur,
image_pokemon_Squirtle,
image_pokemon_Charmander,
image_pokemon_Eevee,
image_pokemon_Mewtwo,
image_pokemon_Mew,
image_pokemon_Snorlax,
image_pokemon_Meowth,
image_pokemon_Psyduck,
image_pokemon_Vulpix,
image_pokemon_Tauros,
image_pokemon_Jigglypuff,
image_pokemon_Gengar,
image_pokemon_Cubone,
image_pokemon_MrMime,
image_pokemon_Ditto,
image_pokemon_Dragonite,
image_pokemon_Machop,
image_pokemon_Oddish,
image_pokemon_Chikorita,
image_pokemon_Cyndaquill,
image_pokemon_Totodile,
image_pokemon_Onyx,
image_pokemon_Lickitung,
image_pokemon_Pichu,
image_pokemon_Togepi,
image_pokemon_Wobbuffet,
image_pokemon_Gyarados,
image_pokemon_Chansey,
image_pokemon_Digglet,
image_pokemon_Abra,
image_pokemon_Ponyta,
image_pokemon_Slowpoke
]

func get_image(index : int ) -> Resource:
	return image_pokemon[index]
