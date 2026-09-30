extends Panel

const black_style = preload("res://styles/black.tres")

var pos: Vector2i

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

func setPos(_pos: Vector2i):
	pos = _pos
	$Label.text = DICT[_pos.x] + str(_pos.y+1)
	if (_pos.x + _pos.y) % 2 == 0:
		add_theme_stylebox_override("panel", black_style)
