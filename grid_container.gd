extends GridContainer

const SQUARE_SCENE = preload("res://square.tscn")

var last_pos = Vector2i(-1, -1)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(8):
		for j in range(8):
			var instance = SQUARE_SCENE.instantiate()
			instance.setPos(Vector2i(j, 7-i))
			if instance.getPos().y == 1:
				instance.setPiece("W", "P")
			if instance.getPos() == Vector2i(0, 0):
				instance.setPiece("W", "R")
			if instance.getPos() == Vector2i(1, 0):
				instance.setPiece("W", "N")
			if instance.getPos() == Vector2i(2, 0):
				instance.setPiece("W", "B")
			if instance.getPos() == Vector2i(3, 0):
				instance.setPiece("W", "Q")
			if instance.getPos() == Vector2i(4, 0):
				instance.setPiece("W", "K")
			if instance.getPos() == Vector2i(5, 0):
				instance.setPiece("W", "B")
			if instance.getPos() == Vector2i(6, 0):
				instance.setPiece("W", "N")
			if instance.getPos() == Vector2i(7, 0):
				instance.setPiece("W", "R")
			if instance.getPos().y == 6:
				instance.setPiece("B", "P")
			if instance.getPos() == Vector2i(0, 7):
				instance.setPiece("B", "R")
			if instance.getPos() == Vector2i(1, 7):
				instance.setPiece("B", "N")
			if instance.getPos() == Vector2i(2, 7):
				instance.setPiece("B", "B")
			if instance.getPos() == Vector2i(3, 7):
				instance.setPiece("B", "Q")
			if instance.getPos() == Vector2i(4, 7):
				instance.setPiece("B", "K")
			if instance.getPos() == Vector2i(5, 7):
				instance.setPiece("B", "B")
			if instance.getPos() == Vector2i(6, 7):
				instance.setPiece("B", "N")
			if instance.getPos() == Vector2i(7, 7):
				instance.setPiece("B", "R")
			
			add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func get_input(pos):
	print(pos)
	if last_pos != last_pos:
		last_pos = pos
	else:
		pass
