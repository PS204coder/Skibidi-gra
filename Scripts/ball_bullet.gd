extends Area2D

var speed = 300
var attack_value = 5

func _process(delta: float) -> void: #w momencie zespawnienia przez magiczną kulke od razu leci w strone gremlinow
	var _velocity = Vector2.RIGHT * speed
	position += _velocity * delta
