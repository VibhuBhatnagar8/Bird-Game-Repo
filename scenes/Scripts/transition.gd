extends CanvasLayer


func change_scene(scene: String):
	$AnimationPlayer.play("RESET")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(scene)
	$AnimationPlayer.play("transition")
