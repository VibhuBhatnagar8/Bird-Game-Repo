extends Button
@onready var parent_node: Panel = %greenpanel



func _on_mouse_entered() -> void:
	$AudioStreamPlayer2D.play()
	if %gold != null:
		%gold.visible = true



func _on_mouse_exited() -> void:
	%gold.visible = false



func _on_pressed() -> void:
	%gold.visible = false
	GameManager.costset(20)
	if parent_node and GameManager.gold == 0:
		parent_node.toggle_animation("RESET")
	if GameManager.gold > 0:
		%goldborder.visible = true
		GameManager.us = 0
		GameManager.ss = 0
		GameManager.golds = 1
		GameManager.gs = 0
		GameManager.ws = 0
		GameManager.rs = 0
		if %redborder.visible == true:
			%redborder.visible = false
		if %whiteborder.visible == true:
			%whiteborder.visible = false
		if %greenborder.visible == true:
			%greenborder.visible = false
		if %superborder.visible == true:
			%superborder.visible = false
		if %ufoborder.visible == true:
			%ufoborder.visible = false
