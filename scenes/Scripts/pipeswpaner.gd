extends Node2D

# Preload your pipe scene
var pipe_scene = preload("res://scenes/pipe.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	# Connect the timer's timeout signal to spawn pipes automatically
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout() -> void:
	spawn_pipe()

func spawn_pipe() -> void:
	var pipe = pipe_scene.instantiate()
	
	# Set X position off the right edge of the screen (e.g., width 800 + extra)
	var screen_width = get_viewport().get_visible_rect().size.x
	var random_y = randf_range(60,150) # Adjust range based on your game size
	
	pipe.position = Vector2(screen_width + 100, random_y)
	
	# Add the pipe to the main scene
	get_tree().current_scene.add_child(pipe)
