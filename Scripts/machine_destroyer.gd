extends CharacterBody2D

const GREMLIN = preload("uid://cw26sav4pg3hp")

@onready var animation: AnimatedSprite2D = $AnimatedSprite2D

@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.start()
	animation.play("default")

func spawn_gremlin(): #spawnowanie normalnych gremlinow ( co sekunde, bez inputu gracza)
	var instance = GREMLIN.instantiate()
	add_child(instance)
	instance.position = Vector2(170, 52)


func _on_timer_timeout() -> void:
	spawn_gremlin()
