extends Label
@onready var greenpanel: Panel = %greenpanel 
func _ready() -> void:
	text = str(GameManager.master_score)
	greenpanel.activate.connect(_on_button_activated)
func _on_button_activated() -> void:
	text = str(GameManager.master_score)
	
