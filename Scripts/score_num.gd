extends Label

var main

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main = get_node("/root/Game Manager")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	text = str(floori(main.score))
