extends Button
@onready var parent_node: Panel = %greenpanel

func _on_mouse_entered() -> void:
	$AudioStreamPlayer2D.play()
	if %ufo != null:
		%ufo.visible = true



func _on_mouse_exited() -> void:
	%ufo.visible = false



func _on_pressed() -> void:
	%ufo.visible = false
	GameManager.costset(30)
	if parent_node and GameManager.ufo == 0:
		parent_node.toggle_animation("RESET")
	if GameManager.ufo > 0:
		%ufoborder.visible = true
		GameManager.us = 1
		GameManager.ss = 0
		GameManager.golds = 0
		GameManager.gs = 0
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
		if %greenborder.visible == true:
			%greenborder.visible = false
