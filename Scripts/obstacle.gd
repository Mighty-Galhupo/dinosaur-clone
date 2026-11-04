@abstract
class_name Obstacle
extends Area2D

var SPEED: float = -400.0
var active: bool = true
var main

func _ready() -> void:
	main = get_node("/root/Game Manager")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func move(delta: float, speed_mult: float) -> void:
	if active:
		position.x += SPEED * (1 + 0.001 * main.score) * speed_mult * delta
		if position.x <= -50:
			active = false
