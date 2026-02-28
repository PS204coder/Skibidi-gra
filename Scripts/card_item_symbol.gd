extends TextureButton

const CARD_NOT_BUTTON = preload("uid://cn1w3p2habt0h")


func _on_pressed() -> void:
	var instance = CARD_NOT_BUTTON.instantiate()
	add_sibling(instance)
	instance.position = Vector2(103.7, 161)
	print("toalteta")
	visible = false
	disabled = true
	
	
