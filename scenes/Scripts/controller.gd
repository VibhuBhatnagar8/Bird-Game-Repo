extends Control



func _on_button_1_pressed() -> void:
	get_tree().paused = false
	Transition.change_scene("res://scenes/main_menu.tscn")
	%CharacterBody2D.queue_free()
	GameManager.score = 0


func _on_button_3_pressed() -> void:
	get_tree().paused = false
	Transition.change_scene("res://scenes/night.tscn")
	%CharacterBody2D.queue_free()
	GameManager.score = 0
