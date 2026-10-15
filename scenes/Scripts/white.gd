extends Button
@onready var parent_node: Panel = %greenpanel


func _on_mouse_entered() -> void:
	$AudioStreamPlayer2D.play()
	if %white != null:
		%white.visible = true



func _on_mouse_exited() -> void:
	%white.visible = false



func _on_pressed() -> void:
	%white.visible = false
	GameManager.costset(15)
	if parent_node and GameManager.w == 0:
		parent_node.toggle_animation("RESET")
	if GameManager.w > 0:
		%whiteborder.visible = true
		GameManager.us = 0
		GameManager.ss = 0
		GameManager.golds = 0
		GameManager.gs = 0
		GameManager.ws = 1
		GameManager.rs = 0
		if %greenborder.visible == true:
			%greenborder.visible = false
		if %redborder.visible == true:
			%redborder.visible = false
		if %goldborder.visible == true:
			%goldborder.visible = false
		if %superborder.visible == true:
			%superborder.visible = false
		if %ufoborder.visible == true:
			%ufoborder.visible = false
