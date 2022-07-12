extends Object

enum {PLACE_BLOCK, COMBINE_BLOCKS}

func apply(type: int, board, data: Dictionary):
	if type == PLACE_BLOCK:
		return place_block(data["x"], data["y"], data["block"])
	if type == COMBINE_BLOCKS:
		return combine_block(data["x"], data["y"], data["blocks"])

func place_block(x: int, y: int, block):
	pass

func combine_block(traget_x: int, target_y: int, blocks: Array):
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
