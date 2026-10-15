extends Label


# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	if GameManager.g > 0:
		%Label.visible = false
		%Button14.visible = false
	if GameManager.r > 0:
		%Label2.visible = false
		%Button8.visible = false
	if GameManager.w > 0:
		%Label3.visible = false
		%Button15.visible = false
	if GameManager.gold > 0:
		%Label4.visible = false
		%Button12.visible = false
	if GameManager.s > 0:
		%Label5.visible = false
		%Button9.visible = false
	if GameManager.ufo > 0:
		%Label6.visible = false
		%Button11.visible = false
