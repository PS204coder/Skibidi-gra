extends Node2D

@onready var card_sprite: AnimatedSprite2D = $AnimatedSprite2D

var card_type: int
var card_level: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("tun tung tun tun sdahur")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#putting the card into the invoentory part 1
	if Global.add_a_card_in_play == true:
		if Global.id_of_last_pressed >= 1 and Global.id_of_last_pressed <= 3:
			card_sprite.play("leaf_card")
			if Global.id_of_last_pressed == 1:
				card_sprite.frame = 0
			if Global.id_of_last_pressed == 2:
				card_sprite.frame = 1
			if Global.id_of_last_pressed == 3:
				card_sprite.frame = 2
		if Global.id_of_last_pressed >= 4 and Global.id_of_last_pressed <= 6:
			card_sprite.play("fire_card")
			if Global.id_of_last_pressed == 4:
				card_sprite.frame = 0
			if Global.id_of_last_pressed == 5:
				card_sprite.frame = 1
			if Global.id_of_last_pressed == 6:
				card_sprite.frame = 2
		if Global.id_of_last_pressed >= 7 and Global.id_of_last_pressed <= 9:
			card_sprite.play("lightning_card")
			if Global.id_of_last_pressed == 7:
				card_sprite.frame = 0
			if Global.id_of_last_pressed == 8:
				card_sprite.frame = 1
			if Global.id_of_last_pressed == 9:
				card_sprite.frame = 2
		if Global.id_of_last_pressed >= 10 and Global.id_of_last_pressed <= 12:
			card_sprite.play("water_card")
			if Global.id_of_last_pressed == 10:
				card_sprite.frame = 0
			if Global.id_of_last_pressed == 11:
				card_sprite.frame = 1
			if Global.id_of_last_pressed == 12:
				card_sprite.frame = 2

		#Putting the card into the inventory part 2
	if Global.active_cards[0] == 0 and Global.add_a_card_in_play == true:
		position = Vector2(104,161)
		Global.add_a_card_in_play = false
		Global.active_cards[0] = Global.id_of_last_pressed
	if Global.active_cards[1] == 0 and Global.add_a_card_in_play == true:
		position = Vector2(138,161)
		Global.add_a_card_in_play = false
		Global.active_cards[1] = Global.id_of_last_pressed
	if Global.active_cards[2] == 0 and Global.add_a_card_in_play == true:
		position = Vector2(172,161)
		Global.add_a_card_in_play = false
		Global.active_cards[2] = Global.id_of_last_pressed
	if Global.active_cards[3] == 0 and Global.add_a_card_in_play == true:
		position = Vector2(205,161)
		Global.add_a_card_in_play = false
		Global.active_cards[3] = Global.id_of_last_pressed

		
				
