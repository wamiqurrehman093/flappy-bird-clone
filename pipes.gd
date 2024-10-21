extends Node2D

var speed: float = 200
var left_bounds: int = -128
var game: Node2D = null

func _ready() -> void:
	game = get_tree().get_first_node_in_group("game")
	$PipeMiddle.body_entered.connect(_on_body_entered_in_the_middle)

func _on_body_entered_in_the_middle(body: Node2D) -> void:
	if body.is_in_group("player"):
		game.add_score(1)

func _process(delta: float) -> void:
	if global_position.x < left_bounds:
		queue_free()
	else:
		position.x -= speed * delta
