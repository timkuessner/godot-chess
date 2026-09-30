extends GridContainer

const SQUARE_SCENE = preload("res://square.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(8):
		for j in range(8):
			var instance = SQUARE_SCENE.instantiate()
			instance.setLabel(str(i) + ", " + str(j))
			add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
