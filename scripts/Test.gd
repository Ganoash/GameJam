extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var board
var block

# Called when the node enters the scene tree for the first time.
func _ready():
	board = load('scripts/logic/board.gd').new(10, 10)
	block = load('scripts/logic/block.gd').new(1, 2, 0)
	board.place_block(block)
	print(board.board)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
