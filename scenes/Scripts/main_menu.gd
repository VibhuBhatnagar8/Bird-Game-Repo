extends Control
const abc = preload("res://scenes/shop.tscn")

func _on_button_pressed() -> void:
	$Start.play()
	Transition.change_scene("res://scenes/control.tscn")


func _on_button_2_pressed() -> void:
	$Exit.play()
	get_tree().quit()
	


func _on_shop_pressed() -> void:
	Transition.change_scene("res://scenes/shop.tscn")
	
