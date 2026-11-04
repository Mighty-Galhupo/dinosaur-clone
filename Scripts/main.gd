extends Node2D

var score: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var hurtbox = get_node("Dinosaur/Hurtbox")
	hurtbox.area_entered.connect(_on_hurtbox_area_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	score += 1 * delta
	
func _on_hurtbox_area_entered(_area: Area2D) -> void:
	get_tree().paused = true
