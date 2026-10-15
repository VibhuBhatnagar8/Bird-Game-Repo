extends Button
@onready var parent_node: Panel = %greenpanel


func _on_mouse_entered() -> void:
	$AudioStreamPlayer2D.play()
	if %green != null:
		%green.visible = true



func _on_mouse_exited() -> void:
	%green.visible = false



func _on_pressed() -> void:
	%green.visible = false
	GameManager.costset(5)
	if parent_node and GameManager.g == 0:
		parent_node.toggle_animation("RESET")
	if GameManager.g > 0:
		%greenborder.visible = true
		GameManager.us = 0
		GameManager.ss = 0
		GameManager.golds = 0
		GameManager.gs = 1
		GameManager.ws = 0
		GameManager.rs = 0
		if %redborder.visible == true:
			%redborder.visible = false
		if %whiteborder.visible == true:
			%whiteborder.visible = false
		if %goldborder.visible == true:
			%goldborder.visible = false
		if %superborder.visible == true:
			%superborder.visible = false
		if %ufoborder.visible == true:
			%ufoborder.visible = false
	
