extends Label

func _ready() -> void:
	# 1. Set the initial text when the game starts
	text = "Score: " + str(GameManager.score)
	
	# 2. Add this missing line to listen for changes:
	GameManager.score_changed.connect(_on_score_changed)

# This function runs every time the GameManager emits the signal
func _on_score_changed(new_score: int) -> void:
	text = "Score: " + str(new_score)
