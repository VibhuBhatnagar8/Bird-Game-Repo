extends Node
@onready var ray_cast_2d: RayCast2D = $AnimatedSprite2D/Eye1/RayCast2D
@onready var ray_cast_2d2: RayCast2D = $AnimatedSprite2D/Eye2/RayCast2D
@onready var ray_cast_2d3: RayCast2D = $AnimatedSprite2D/Eye3/RayCast2D





func _ready() -> void:
	ray_cast_2d.is_casting = false
	play_animation_loop()
	play_animation_loop_2()
	play_animation_loop_3()
	$AnimatedSprite2D/Eye1/RayCast2D.visible = false
	$AnimatedSprite2D/Eye2/RayCast2D.visible = false
	$AnimatedSprite2D/Eye3/RayCast2D.visible = false
func play_animation_loop() -> void:
	while true:
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D/Eye1/RayCast2D.visible = true
		$AnimatedSprite2D/Eye1.play("white")
		$AnimatedSprite2D/Eye1/RayCast2D/GPUParticles2D.emitting = true
		$AnimatedSprite2D/Eye1/RayCast2D/GPUParticles2D2.emitting = true
		$AnimatedSprite2D/Eye1/RayCast2D/PointLight2D.enabled= true
		ray_cast_2d.is_casting = true
		await get_tree().create_timer(2.0).timeout
		$AnimatedSprite2D/Eye1.play("default")
		$AnimatedSprite2D/Eye1/RayCast2D/GPUParticles2D.emitting = false
		$AnimatedSprite2D/Eye1/RayCast2D/GPUParticles2D2.emitting = false
		$AnimatedSprite2D/Eye1/RayCast2D/PointLight2D.enabled= false
		ray_cast_2d.is_casting = false
		await get_tree().create_timer(3.0).timeout
		ray_cast_2d.is_casting = false
		$AnimatedSprite2D/Eye1/RayCast2D/GPUParticles2D.emitting = false
		$AnimatedSprite2D/Eye1/RayCast2D/GPUParticles2D2.emitting = false
		$AnimatedSprite2D/Eye1/RayCast2D/PointLight2D.enabled= false
func play_animation_loop_2() -> void:
	while true:
		await get_tree().create_timer(6.0).timeout
		$AnimatedSprite2D/Eye2/RayCast2D.visible = true
		$AnimatedSprite2D/Eye2.play("white")
		$AnimatedSprite2D/Eye2/RayCast2D/GPUParticles2D.emitting = true
		$AnimatedSprite2D/Eye2/RayCast2D/GPUParticles2D2.emitting = true
		$AnimatedSprite2D/Eye2/RayCast2D/PointLight2D.enabled= true
		ray_cast_2d2.is_casting = true
		await get_tree().create_timer(1.0).timeout
		$AnimatedSprite2D/Eye2.play("default")
		$AnimatedSprite2D/Eye2/RayCast2D/GPUParticles2D.emitting = false
		$AnimatedSprite2D/Eye2/RayCast2D/GPUParticles2D2.emitting = false
		$AnimatedSprite2D/Eye2/RayCast2D/PointLight2D.enabled= false
		ray_cast_2d2.is_casting = false
		await get_tree().create_timer(3.0).timeout
		ray_cast_2d2.is_casting = false
		$AnimatedSprite2D/Eye2/RayCast2D/GPUParticles2D.emitting = false
		$AnimatedSprite2D/Eye2/RayCast2D/GPUParticles2D2.emitting = false
		$AnimatedSprite2D/Eye2/RayCast2D/PointLight2D.enabled= false
func play_animation_loop_3() -> void:
	while true:
		await get_tree().create_timer(8.0).timeout
		$AnimatedSprite2D/Eye3/RayCast2D.visible = true
		$AnimatedSprite2D/Eye3.play("white")
		$AnimatedSprite2D/Eye3/RayCast2D/GPUParticles2D.emitting = true
		$AnimatedSprite2D/Eye3/RayCast2D/GPUParticles2D2.emitting = true
		$AnimatedSprite2D/Eye3/RayCast2D/PointLight2D.enabled= true
		ray_cast_2d3.is_casting = true
		await get_tree().create_timer(1.0).timeout
		$AnimatedSprite2D/Eye3.play("default")
		$AnimatedSprite2D/Eye3/RayCast2D/GPUParticles2D.emitting = false
		$AnimatedSprite2D/Eye3/RayCast2D/GPUParticles2D2.emitting = false
		$AnimatedSprite2D/Eye3/RayCast2D/PointLight2D.enabled= false
		ray_cast_2d3.is_casting = false
		await get_tree().create_timer(3.0).timeout
		ray_cast_2d3.is_casting = false
		$AnimatedSprite2D/Eye3/RayCast2D/GPUParticles2D.emitting = false
		$AnimatedSprite2D/Eye3/RayCast2D/GPUParticles2D2.emitting = false
		$AnimatedSprite2D/Eye3/RayCast2D/PointLight2D.enabled= false
