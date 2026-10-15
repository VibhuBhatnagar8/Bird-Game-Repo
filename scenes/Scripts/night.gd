extends Node2D
var t=0
func _ready():
	%"Game over".hide()
	disable_spawner()
	freeze_character_physics()
	if GameManager.ws==1:
		Engine.time_scale = 0.7
func showlayer():
	%"Game over".show()
func disable_spawner() -> void:
	get_tree().call_group("pipes", "set_process_mode", Node.PROCESS_MODE_DISABLED)
	%pipeswpaner.process_mode = Node.PROCESS_MODE_DISABLED
func enable_spawner() -> void:
	get_tree().call_group("pipes", "set_process_mode", Node.PROCESS_MODE_INHERIT)
	%pipeswpaner.process_mode = Node.PROCESS_MODE_INHERIT
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		enable_spawner()
		unfreeze_character_physics()
		if t ==0:
			$Label/AnimationPlayer.play("fade")
			t = 1
func freeze_character_physics() -> void:
	%CharacterBody2D.set_physics_process(false)
func unfreeze_character_physics() -> void:
	if %CharacterBody2D != null:
		%CharacterBody2D.set_physics_process(true)
