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
	if global_position.x >= 370:
		queue_free()
	global_position.x += movement_speed * delta
	print(position)

func leaf_002():
	attack_id = 2
	damage = 10
	movement_speed = 0
	animation.play("leaf_002")
	animation.offset.y = -32
	scale = Vector2(0.686, 0.686)
	global_position = Vector2(100, 85)
	
func water_001():
	attack_id = 10
	damage = 3
	slow_down = 0.8
	movement_speed = 150
	animation.play("water_001")
	animation.offset.y = 0
	scale = Vector2(1,1)
	global_position = Vector2(85, 86)


func _on_animation_animation_finished() -> void:
	queue_free()
