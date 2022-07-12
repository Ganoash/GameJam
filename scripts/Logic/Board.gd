extends Object


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var board: Array
var line

# Called when the node enters the scene tree for the first time.
func _init(width: int, height: int):
	for x in range(width):
		board.append([])
		for y in range(height):
			board[x].append(null)
	line = load("scripts/logic/line.gd").new(width/2, 1)

func _within_bounds(x: int, y: int):
	if x > 0 and x < board.size():
		if y > 0 and y < board[0].size(): 
			return true
	return false

func place_block(block):
	var coords = line.mirror(block.x, block.y)
	if _within_bounds(block.x, block.y):
		board[block.x][block.y] = block
		board[coords["x"]][coords["y"]] = block
		return true
	return false
	
func remove_block(block):
	if _within_bounds(block.x, block.y):
		board[block.x][block.y] = null
		return true
	return false

func combine_block(blocks: Array, combined_block):
	for block in blocks:
		remove_block(block)
	place_block(combined_block)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
