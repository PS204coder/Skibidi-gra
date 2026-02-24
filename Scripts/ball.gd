extends Area2D

const BALL_BULLET = preload("uid://vevferkh7s4l")
const GREMLIN = preload("uid://cw26sav4pg3hp")
@onready var animation: AnimatedSprite2D = $AnimatedSprite2D


@onready var timer: Timer = $Timer

var ball_hp = 100

func _ready() -> void:
	timer.start()
	animation.play("idle")

func _process(delta: float) -> void:
	pass
		
		
func spawn_bullet(): #spawnowanie normalnych pociskow ( co sekunde, bez inputu gracza)
	var instance = BALL_BULLET.instantiate()
	add_child(instance)
	instance.position = Vector2(10,-8)


func _on_timer_timeout() -> void:
	spawn_bullet() #co sekunde spawnuje te default pociski, te ulepszone/odpalane kartami napisze sie inaczej


func _on_area_entered(area: Area2D) -> void:
	if area.gremlin_type == 1:
		ball_hp -= 5
	else:
		ball_hp -= 4
