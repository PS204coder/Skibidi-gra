extends Area2D

var speed = 50
var gremlin_hp = 20
var gremlin_type 

@onready var animation: AnimatedSprite2D = $AnimatedSprite2D

var random_number = randi_range(0, 1000)
func _ready() -> void:
	if random_number == 652:
		animation.play("walk_femboy")
		gremlin_type = 652
	elif random_number >= 500:
		animation.play("walk_normal")
		gremlin_type = 1
	elif random_number < 500:
		animation.play("walk_armour")
		gremlin_type = 2
		
func _process(delta: float) -> void: #w momencie zespawnienia od razu idzie na kulke
	
	
	#movement
	var _velocity = Vector2.LEFT * speed 
	position += _velocity * delta
	
	#death
	if gremlin_hp <= 0:
		speed = 0
		if animation.animation != "normal_death":
			animation.play("normal_death")
		$CollisionShape2D.disabled = true


#goblin taking damage
func _on_area_entered(area: Area2D) -> void:
	if gremlin_type == 1:
		gremlin_hp -= Global.attack_value_def_bullet 
	elif gremlin_type == 2:
		gremlin_hp -= Global.attack_value_def_bullet/2
	
#death after finishing playing the death animation
func _on_animated_sprite_2d_animation_finished() -> void:
	if animation.animation == "normal_death":
		queue_free()
