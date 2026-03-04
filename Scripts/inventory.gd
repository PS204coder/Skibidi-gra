extends Control

const CARD = preload("uid://cn1w3p2habt0h")

@onready var leaf_1: TextureButton = $"leaf 1"
@onready var leaf_2: TextureButton = $"leaf 2"
@onready var leaf_3: TextureButton = $"leaf 3"
@onready var fire_1: TextureButton = $"fire 1"
@onready var fire_2: TextureButton = $"fire 2"
@onready var fire_3: TextureButton = $"fire 3"
@onready var lightning_1: TextureButton = $"lightning 1"
@onready var lightning_2: TextureButton = $"lightning 2"
@onready var lightning_3: TextureButton = $"lightning 3"
@onready var water_1: TextureButton = $"water 1"
@onready var water_2: TextureButton = $"water 2"
@onready var water_3: TextureButton = $"water 3"




func _on_water_1_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	water_1.visible = false
	water_1.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 10


func _on_water_2_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	instance.position = Vector2(103.7, 161)
	water_2.visible = false
	water_2.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 11
	


func _on_water_3_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	water_3.visible = false
	water_3.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 12


func _on_fire_1_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	fire_1.visible = false
	fire_1.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 4


func _on_fire_2_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	fire_2.visible = false
	fire_2.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 5


func _on_fire_3_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	fire_3.visible = false
	fire_3.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 6


func _on_lightning_1_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	lightning_1.visible = false
	lightning_1.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 7


func _on_lightning_2_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	lightning_2.visible = false
	lightning_2.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 8


func _on_lightning_3_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	lightning_3.visible = false
	lightning_3.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 9


func _on_leaf_1_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	leaf_1.visible = false
	leaf_1.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 1


func _on_leaf_2_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	leaf_2.visible = false
	leaf_2.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 2


func _on_leaf_3_pressed() -> void:
	var instance = CARD.instantiate()
	add_sibling(instance)
	leaf_3.visible = false
	leaf_3.disabled = true
	Global.add_a_card_in_play = true
	Global.id_of_last_pressed = 3
