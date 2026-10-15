extends Parallax2D

# 1. Adjust this to control how fast the clouds drift
@export var cloud_speed: float = 10.0 

func _process(delta: float) -> void:
	# 2. DELETE the old "@onready var" line. 
	# 3. Use 'scroll_offset.x' directly because this script IS the node!
	scroll_offset.x -= cloud_speed * delta
# 1. Only reference the cloud layer since it's the only one moving
@onready var cloud_layer: Parallax2D = $Cloud_Layer

# 2. Adjust this to control how fast the clouds drift
