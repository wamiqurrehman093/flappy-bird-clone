extends Node2D

var score: int = 0

func add_score(amount: int) -> void:
	score += amount
	$HUD/Score.text = str(score)

func game_over() -> void:
	$HUD/GameOver.show()
