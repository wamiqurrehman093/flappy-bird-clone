extends RigidBody2D

var flap_amount: float = 325
var is_alive: bool = true
var game: Node2D = null
var upper_bounds: int = -100
var lower_bounds: int = 748
func _ready() -> void:
	game = get_tree().get_first_node_in_group("game")

func _process(delta: float) -> void:
	if has_hit_pipes() or has_gone_offscreen():
		is_alive = false
		game.game_over()
	if Input.is_action_pressed("flap") and is_alive:
		linear_velocity.y = -flap_amount

func has_hit_pipes() -> bool:
	return get_colliding_bodies().size() > 0

func has_gone_offscreen() -> bool:
	return position.y < upper_bounds or position.y > lower_bounds
