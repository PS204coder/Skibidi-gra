extends Area2D


@onready var animation: AnimatedSprite2D = $Animation

const SPEED = 100

var _delta 

func _ready() -> void:
	visible = false
func _physics_process(delta: float) -> void:
	_delta = delta

				


func _on_timer_timeout() -> void:
	for i in range(3):
		if Global.active_cards[i] != 0:
			if Global.active_cards[i] == 10:
				visible = true
				var _velocity = Vector2.RIGHT * _delta
				position += _velocity * SPEED
				animation.play("water_001")
