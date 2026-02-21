extends Area2D

var speed = 50
var gremlin_hp = 20

@onready var animation: AnimatedSprite2D = $AnimatedSprite2D

var random_number = randi_range(0, 1000)
func _ready() -> void:
	if random_number == 652:
		animation.play("walk_femboy")
	else:
		animation.play("walk_normal")

func _process(delta: float) -> void: #w momencie zespawnienia od razu idzie na kulke
	
	print(random_number)
	
	#movement
	var _velocity = Vector2.LEFT * speed
	position += _velocity * delta
	
	#death
	if gremlin_hp <= 0:
		speed = 0
		animation.play("normal_death")



func _on_area_entered(area: Area2D) -> void:
	gremlin_hp -= Global.attack_value_def_bullet 
	
	
func _on_animated_sprite_2d_animation_finished() -> void:
	if animation.animation == "normal_death":
		queue_free()
