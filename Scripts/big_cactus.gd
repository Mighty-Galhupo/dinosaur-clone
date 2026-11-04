extends Obstacle

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	super._ready()

func _process(delta: float) -> void:
	super.move(delta, 1)
