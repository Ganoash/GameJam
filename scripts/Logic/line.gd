extends Object


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
enum {HORIZONTAL, VERTICAL}

var _location
var _direction

# Called when the node enters the scene tree for the first time.
func _init(location: int, direction):
	_location = location
	_direction = direction
	
func mirror(x: int, y: int):
	if _direction == HORIZONTAL:
		if y <= _location:
			return {"x": x, "y": _location + (_location - y - 1)}
		else:
			return {"x": x, "y": _location - (y - _location - 1)}
	else:
		if x <= _location:
			return {"x": _location + (_location - x - 1), "y": y}
		else:
			return {"x": _location - (x - _location - 1), "y": y}


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
