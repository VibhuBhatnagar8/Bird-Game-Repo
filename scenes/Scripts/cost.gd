extends Label



func _ready() -> void:
	text = "Score: " + str(GameManager.cost)
	GameManager.cost_changed.connect(_cost_changed)
	

func _cost_changed(new_score: int) -> void:
	text = "Score: "+ str(GameManager.cost)
