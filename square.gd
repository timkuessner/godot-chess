extends Panel

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
