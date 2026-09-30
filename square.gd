extends Panel

const black_style = preload("res://styles/black.tres")

var pos: Vector2i

enum pieces { JUMP, WALK, RUN, IDLE, HURT, DEATH}

const DICT = {
	0:"a",
	1:"b",
	2:"c",
	3:"d",
	4:"e",
	5:"f",
	6:"g",
	7:"h",
}

func selected(v: bool):
	if v:
		$MarginContainer.show()
	else:
		$MarginContainer.hide()

func getPos() -> Vector2i:
	return pos

func setPiece(c: String, p: String):
	$AnimatedSprite2D.play(c + "_" + p)

func set0():
	$AnimatedSprite2D.play("0")

func setPos(_pos: Vector2i):
	pos = _pos
	$Label.text = DICT[_pos.x] + str(_pos.y+1)
	if (_pos.x + _pos.y) % 2 == 0:
		add_theme_stylebox_override("panel", black_style)

func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_parent().get_input(pos)
