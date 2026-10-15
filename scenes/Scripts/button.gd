extends Button



func _on_mouse_entered() -> void:
	%nightpoint2.enabled = true
	$nighthover.play()


func _on_mouse_exited() -> void:
	%nightpoint2.enabled = false


	
