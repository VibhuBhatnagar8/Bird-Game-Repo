extends Panel
signal activate 

@onready var anim_player: AnimationPlayer = $AnimationPlayer

# Call this function from outside to play/stop the animation
func toggle_animation(anim_name: String) -> void:
	if anim_player.is_playing() and anim_player.current_animation == "RESET":
		anim_player.stop()
	else:
		anim_player.play("RESET")
		$AudioStreamPlayer2D.play()
		

# Call this function from outside to play/stop the animation
func toggle_animation_reset(anim_name: String) -> void:
		$AudioStreamPlayer2D2.play()
		anim_player.play_backwards("RESET")
		
	
		


func _on_shop_pressed() -> void:
	var c =GameManager.cost
	if GameManager.master_score>= c:
		GameManager.master_score = GameManager.master_score - c
		$shop/aud.play()
		activate.emit()
		toggle_animation_reset("RESET")
		if c == 5 and GameManager.g != 1:
			GameManager.unlockg()
		if c == 10 and GameManager.r != 1:
			GameManager.unlockr()
		if c == 15 and GameManager.w != 1:
			GameManager.unlockw()
		if c == 20 and GameManager.gold != 1:
			GameManager.unlockgold()
		if c == 30 and GameManager.ufo != 1:
			GameManager.unlockufo()
		if c == 40 and GameManager.s != 1: 
			GameManager.unlocks()
			
	else:
		toggle_animation_reset("RESET")


func _on_shop_2_pressed() -> void:
	toggle_animation_reset("RESET")
