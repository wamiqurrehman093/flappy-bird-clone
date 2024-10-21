extends Control

func _ready() -> void:
	$PlayAgain.pressed.connect(_on_play_again_pressed)

func _on_play_again_pressed() -> void:
	get_tree().reload_current_scene()
