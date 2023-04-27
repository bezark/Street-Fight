extends CharacterBody2D

signal finished_player_turn

@export var currentMovementPattern = [Vector2i(1,0), Vector2i(-1,0), Vector2i(0,1),Vector2i(0,-1)]
#"Plus" pattern- perhaps there's a way to pass these around more easily...
var Main 
var Board

# Called when the node enters the scene tree for the first time.

func _ready():
	Main = $"../.."
	Main.connect("began_player_turn", _start_turn)
	Board = $".."
	
func _start_turn():
	Board.clear_layer(1)
	_render_movement_options()	

func _render_movement_options():
	print("Map coords: ", Board.local_to_map(position))
	for spaceOffset in currentMovementPattern:
		var moveOption = Board.local_to_map(position)+spaceOffset
		Board.set_cell(1,moveOption,1,Vector2i(0,0))
	print(position)



func _input(event):   # Checks to see if clicked cell contains a move highlight and moves there if so
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		var clicked_cell = Board.local_to_map(Board.get_local_mouse_position())
		print(clicked_cell)
		var data = Board.get_cell_tile_data(1, clicked_cell)
		if data:
			position = Board.map_to_local(clicked_cell)
			Board.clear_layer(1)
			emit_signal("finished_player_turn")
			






