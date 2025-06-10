extends Control

func _ready() -> void:
	$PlayAgain.pressed.connect(_on_play_again_pressed)

func _input(event: InputEvent) -> void:
	if visible and event.is_action_pressed("flap"):
		_on_play_again_pressed()

func _on_play_again_pressed() -> void:
	get_tree().reload_current_scene()
