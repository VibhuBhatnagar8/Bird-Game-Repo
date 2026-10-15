extends Button
@onready var parent_node: Panel = %greenpanel

func _on_mouse_entered() -> void:
	$AudioStreamPlayer2D.play()
	if %red != null:
		%red.visible = true



func _on_mouse_exited() -> void:
	%red.visible = false



func _on_pressed() -> void:
	%red.visible = false
	GameManager.costset(10)
	if parent_node and GameManager.r == 0:
		parent_node.toggle_animation("RESET")
	if GameManager.r > 0:
		%redborder.visible = true
		GameManager.us = 0
		GameManager.ss = 0
		GameManager.golds = 0
		GameManager.gs = 0
		GameManager.ws = 0
		GameManager.rs = 1
		if %greenborder.visible == true:
			%greenborder.visible = false
		if %whiteborder.visible == true:
			%whiteborder.visible = false
		if %goldborder.visible == true:
			%goldborder.visible = false
		if %superborder.visible == true:
			%superborder.visible = false
		if %ufoborder.visible == true:
			%ufoborder.visible = false
	
