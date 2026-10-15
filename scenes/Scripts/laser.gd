extends RayCast2D
@onready var line_2d: Line2D = $Line2D
var tween: Tween = null
@onready var line_width:= line_2d.width
var max_length = -1400
var cast_speed =-7000
var growth_time = 0.2
@export var is_casting := false: set = set_is_casting
func _ready() -> void:
	set_is_casting(is_casting)
func _physics_process(delta: float) -> void:
	target_position.x = move_toward(
		target_position.x,
		max_length,
		cast_speed
	)
	var laser_end_position:= target_position
	force_raycast_update()
	if is_colliding():
		laser_end_position = to_local(get_collision_point())
	line_2d.points[1]=laser_end_position


func set_is_casting(new_value: bool) -> void:
	if is_casting == new_value:
		return
	is_casting = new_value
	set_physics_process(is_casting)
	if is_casting == false:
		target_position.x = 0
		disapear()
	else:
		appear()

func appear():
	line_2d.visible = true
	if tween and tween.is_running():
		tween.kill()
	tween = create_tween()
	tween.tween_property(line_2d,"width",line_width,growth_time*2).from(0)

func disapear():
	if tween and tween.is_running():
		tween.kill()
	tween = create_tween()
	tween.tween_property(line_2d,"width",0,growth_time*2).from_current()
	tween.tween_callback(line_2d.hide)
