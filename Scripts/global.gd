extends Node
"A global code for passing aroud variables and statistics"

#Statistics
var gremlins_killed: int
var experience: int

#Values
var attack_value_def_bullet = 7

#Inventories
var active_cards = [0, 0, 0, 0]
var inventory = []

#signals throu code


var add_a_card_in_play: bool
var id_of_last_pressed: int


func _process(delta: float) -> void:
	print(active_cards," ", id_of_last_pressed," ", add_a_card_in_play, " ")
