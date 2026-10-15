extends Area2D




func _on_body_entered(body: Node2D) -> void:
	GameManager.add_score()
	print(GameManager.score)
	$AudioStreamPlayer2D.play()

	
	
