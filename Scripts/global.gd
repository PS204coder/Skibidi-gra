extends Node
"A global code for passing aroud variables and statistics"

#Statistics
var gremlins_killed: int
var experience: int

#Values
var attack_value_def_bullet = 7

#Inventories
var active_cards = []
var inventory = []

#signals throu code
var add_a_card_in_play: bool

func _physics_process(delta: float) -> void:
	if add_a_card_in_play == true:
		pass
