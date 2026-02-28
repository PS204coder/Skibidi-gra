extends Sprite2D

@onready var card_sprite: AnimatedSprite2D = $AnimatedSprite2D

var card_type: int
var card_level: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("tun tung tun tun sdahur")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if card_sprite.animation == "fire_card":
		card_type = 1
	if card_sprite.animation == "water_card":
		card_type = 2
	if card_sprite.animation == "leaf_card":
		card_type = 3
	if card_sprite.animation == "lightning_card":
		card_type = 4
