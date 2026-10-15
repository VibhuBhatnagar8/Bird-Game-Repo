extends Control

func _ready():
	$chime.play()



func _on_shop_pressed() -> void:
	$CanvasLayer/shop/aud.play()
	Transition.change_scene("res://scenes/main_menu.tscn")
	
