extends Area2D

var speed = 50
var gremlin_hp = 20
var gremlin_type 

@onready var animation: AnimatedSprite2D = $AnimatedSprite2D
@onready var health_bar: AnimatedSprite2D = $Health_bar

var random_number = randi_range(0, 1000)
func _ready() -> void:
	if random_number == 652:
		animation.play("walk_femboy")
		gremlin_type = 652
	if random_number >= 500:
		animation.play("walk_normal")
		gremlin_type = 1
	if random_number < 300:
		animation.play("walk_armour")
		gremlin_type = 2
	else:
		animation.play("walk_normal")
		gremlin_type = 1
		
		
func _process(delta: float) -> void: #w momencie zespawnienia od razu idzie na kulke
	
	#movement
	var _velocity = Vector2.LEFT * speed 
	position += _velocity * delta
	
	if gremlin_type == 1:
		health_bar.play("normal_health_bar")
	if gremlin_type == 2:
		health_bar.animation = "armour_health_bar"
	
	if health_bar.animation == "armour_health_bar" and health_bar.frame == 14:
		gremlin_type = 1
	
	#death
	if gremlin_hp <= 0:
		speed = 0
		if animation.animation != "normal_death":
			if gremlin_type == 1 or gremlin_type == 2:
				animation.play("normal_death")
		if animation.animation != "femboy_death":
			if gremlin_type == 652:
				animation.play("femboy_death")
		$CollisionShape2D.disabled = true


#goblin taking damage
func _on_area_entered(area: Area2D) -> void:
	if gremlin_type == 1:
		gremlin_hp -= Global.attack_value_def_bullet 
		health_bar.frame += 5
	elif gremlin_type == 2:
		gremlin_hp -= Global.attack_value_def_bullet/3
		health_bar.frame += 7

	
#death after finishing playing the death animation
func _on_animated_sprite_2d_animation_finished() -> void:
	if animation.animation == "normal_death" or animation.animation == "femboy_death":
		Global.gremlins_killed += 1
		queue_free()
