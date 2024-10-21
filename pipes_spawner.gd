extends Node2D

var pipes_scene = preload("res://pipes.tscn")
var displacement: int = 150

func _ready() -> void:
	$Timer.timeout.connect(_on_timer_timeout)
	$Timer.start()
	spawn_pipes()

func _on_timer_timeout() -> void:
	spawn_pipes()

func spawn_pipes() -> void:
	var pipes = pipes_scene.instantiate()
	pipes.position.y = randf_range(-displacement, displacement)
	add_child(pipes)
