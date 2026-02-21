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
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	gremlin_hp -= Global.attack_value_def_bullet 
