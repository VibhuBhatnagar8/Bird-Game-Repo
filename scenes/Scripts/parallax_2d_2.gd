extends Parallax2D


@export var cloud_speed: float = 20.0 

func _process(delta: float) -> void:
	scroll_offset.x -= cloud_speed * delta
@onready var cloud_layer: Parallax2D = $Cloud_Layer
