extends Object


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

enum {PEOPLE, FOOD, RESOURCE, NATURE}

var x: int
var y: int
var type

# Called when the node enters the scene tree for the first time.
func _init(x: int, y: int, type):
	self.x = x
	self.y = y
	self.type = type

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
