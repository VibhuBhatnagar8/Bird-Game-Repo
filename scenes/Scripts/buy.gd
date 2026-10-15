extends Button
@onready var parent_node: Panel = %greenpanel
signal activate 


func _on_pressed() -> void:
	var c =GameManager.cost
	if GameManager.master_score> c:
		GameManager.master_score = GameManager.master_score - c
		activate.emit()
	else:
		if parent_node:
			parent_node.toggle_animation("RESET")

	
		
	
	
	
