extends Button
@onready var parent_node: Panel = %greenpanel

func _on_mouse_entered() -> void:
	$AudioStreamPlayer2D.play()
	if %super != null:
		%super.visible = true



func _on_mouse_exited() -> void:
	%super.visible = false



func _on_pressed() -> void:
	%super.visible = false
	GameManager.costset(40)
	if parent_node and GameManager.s == 0:
		parent_node.toggle_animation("RESET")
	if GameManager.s > 0:
		%superborder.visible = true
		GameManager.ss = 1
		GameManager.us = 0
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
		if %greenborder.visible == true:
			%greenborder.visible = false
		if %ufoborder.visible == true:
			%ufoborder.visible = false
