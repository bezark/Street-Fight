extends Area2D

@export var shapes = ["Star", "Triangle", "Circle", "Square"]
@export var shape = ""
var speed = 194

func _ready():
	randomize()
	var shape_int = randi() % shapes.size()
	$Shapes.frame = shape_int
	shape = shapes[shape_int]
	print(shape)
	
	#global movement timer
	$"../EveryBodyMove".timeout.connect(_on_every_body_move_timeout)





#Fluid Movement
#func _process(delta):
#	# Move the enemy 194 units to the left every second
#	position.x -= speed * delta
#	speed += 0.001

	
	
# Squares Movement	
func _on_every_body_move_timeout():
	print(shape, " is moving")
	position.x -= speed




