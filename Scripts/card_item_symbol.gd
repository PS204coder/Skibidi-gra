extends TextureButton

const CARD = preload("uid://bkxgg5dxrubmj")

func _on_pressed() -> void:
	spawn_card()
	queue_free()
	

func spawn_card(): 
	var instance = CARD.instantiate()
	add_child(instance)
	instance.position = Vector2(150, 30)
	
