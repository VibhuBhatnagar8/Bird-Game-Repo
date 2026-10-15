extends Node

var p =0

func trigger_game_over():
	if p ==0:
		p=1
		$AudioStreamPlayer2D.play()
		await $AudioStreamPlayer2D.finished
		get_tree().paused = true
		get_tree().current_scene.get_node("move").play("RESET")
		get_tree().current_scene.get_node("Game over").visible = true
		
	p=0
	
