extends Node2D


var scroll_speed = 200.0

func _process(delta: float) -> void:
	# Move the pipe left every frame
	position.x -= scroll_speed * delta
	
	# Delete the pipe when it goes off screen to save memory
	if position.x < -200:
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
