extends Area2D

var speed = 50
var gremlin_hp = 20

func _process(delta: float) -> void: #w momencie zespawnienia od razu idzie na kulke
	#movement
	var _velocity = Vector2.LEFT * speed
	position += _velocity * delta
	
	#death
	if gremlin_hp <= 0:
		print("skibidi")


func _on_area_entered(area: Area2D) -> void:
	gremlin_hp -= 5 #tutaj attack_value zamiast liczby, trzeba podlaczyc z kodu ball_bullet
