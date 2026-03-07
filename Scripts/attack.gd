extends Area2D


@onready var animation: AnimatedSprite2D = $Animation

var damage: int
var slow_down: int
var burn: int
var poison: int
var freeze: int
var movement_speed: int

var attack_id: int

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	position.x += movement_speed * delta
	
func leaf_002():
	attack_id = 2
	damage = 6
	animation.play("leaf_002")
	
func water_001():
	attack_id = 10
	damage = 3
	slow_down = 0.8
	movement_speed = 150
	animation.play("water_001")


func _on_animation_animation_finished() -> void:
	queue_free()
