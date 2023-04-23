extends RigidBody2D

@export var shapes = ["Star", "Triangle", "Circle", "Square"]
@export var shape = ""


func _ready():
	# There has to be a better way to do this...
	var shape_int = randi_range(0, shapes.size()-1)
	$Shapes.frame = shape_int
	shape = shapes[shape_int]
	print(shape)

func _process(delta):
	pass
