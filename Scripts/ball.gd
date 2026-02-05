extends Area2D

const BALL_BULLET = preload("uid://vevferkh7s4l")

@onready var timer: Timer = $Timer

var ball_hp = 100

func _ready() -> void:
	timer.start()

func _process(delta: float) -> void:
	pass
		
		
func spawn_scene(): #spawnowanie normalnych pociskow ( cos ekunde, bez inputu gracza)
	var instance = BALL_BULLET.instantiate()
	add_child(instance)
	instance.global_position = global_position


func _on_timer_timeout() -> void:
	spawn_scene() #co sekunde spawnuje te default pociski, te ulepszone/odpalane kartami napisze sie inaczej
