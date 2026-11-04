extends Node2D

var BigCactus

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	BigCactus = get_node("../Obstacles/Big Cactus")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if BigCactus.active == false:
		BigCactus.position.x = position.x
		BigCactus.active = true
