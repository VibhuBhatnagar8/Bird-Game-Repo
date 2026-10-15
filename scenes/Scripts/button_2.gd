extends Button



func _on_mouse_entered() -> void:
	%nightpoint.enabled = true
	$nighthover.play()

func _on_mouse_exited() -> void:
	%nightpoint.enabled = false
