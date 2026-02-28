extends TextureButton


const CARD_NOT_BUTTON = preload("uid://cn1w3p2habt0h")


func spawn_card(): 
	var instance = CARD_NOT_BUTTON.instantiate()
	add_child(instance)
	instance.position = Vector2(308, 157)
	print("toalteta")


func _on_pressed() -> void:
	spawn_card()
	queue_free()
