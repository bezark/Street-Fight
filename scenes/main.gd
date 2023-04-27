extends Node2D

signal began_player_turn #Do you think it's better to do it this way or have one signal that sends whos turn it is?
@export var isPlayerTurn = false #probably unnecessary

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_turn_timer_timeout():
	isPlayerTurn = not isPlayerTurn
	if isPlayerTurn:
		#$Board.clear_layer(1)
		emit_signal("began_player_turn")
	else:
		$Board.clear_layer(1)
