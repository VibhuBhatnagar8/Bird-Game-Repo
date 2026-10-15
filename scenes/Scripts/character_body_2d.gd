extends CharacterBody2D
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


var JUMP_VELOCITY = -300.0
var rotation_speed: float = 6.0
		

func _physics_process(delta: float) -> void:
	if $AnimatedSprite2D.get_animation() == "gold":
		JUMP_VELOCITY = -300
	if not is_on_floor():
		if $AnimatedSprite2D.get_animation() == "gold":
			velocity.y += gravity * delta*1.5
		if $AnimatedSprite2D.get_animation() == "superbird":
			velocity.y += gravity * delta*2
		else:
			velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump"):
		$AudioStreamPlayer2D.play()
		velocity.y = JUMP_VELOCITY
		rotation_degrees = -30
	if $AnimatedSprite2D.get_animation() == "superbird":
		if Input.is_action_pressed("jump"):
			velocity.y = -200
		if velocity.y > 0:
			rotation_degrees = move_toward(rotation_degrees, 40, rotation_speed * delta * 90)
	if $AnimatedSprite2D.get_animation() != "superbird":
		if velocity.y > 0:
			rotation_degrees = move_toward(rotation_degrees, 40, rotation_speed * delta * 20)
		else:
			rotation_degrees = move_toward(rotation_degrees, 30, rotation_speed * delta * 20)
	if $AnimatedSprite2D.get_animation() == "green" or $AnimatedSprite2D.get_animation() == "white":
		if velocity.y > 0:
			rotation_degrees = move_toward(rotation_degrees, 10, rotation_speed * delta * 10)
		else:
			rotation_degrees = move_toward(rotation_degrees, 10, rotation_speed * delta * 10)
	move_and_slide()
func _ready() -> void:
	if $AnimatedSprite2D.get_animation() == "ufo":
		%nightpoint.enabled = true
	if $AnimatedSprite2D.get_animation() == "superbird":
		$CPUParticles2D.emitting = true
	if GameManager.gs ==1:
		$AnimatedSprite2D.play("green")
	if GameManager.rs ==1:
		$AnimatedSprite2D.play("red")
	if GameManager.ws ==1:
		$AnimatedSprite2D.play("white")
	if GameManager.golds ==1:
		$AnimatedSprite2D.play("gold")
	if GameManager.us ==1:
		$AnimatedSprite2D.play("ufo")
	if GameManager.ss ==1:
		$AnimatedSprite2D.play("superbird")
