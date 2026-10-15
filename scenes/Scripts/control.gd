extends Control






func _on_button_pressed() -> void:
	$Day.play()
	Transition.change_scene("res://scenes/game.tscn")


func _on_button_2_pressed() -> void:
	$Night.play()
	Transition.change_scene("res://scenes/night.tscn")


func _on_shop_pressed() -> void:
	Transition.change_scene("res://scenes/main_menu.tscn")
