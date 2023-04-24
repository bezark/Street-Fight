extends Area2D

@export var shapes = ["Star", "Triangle", "Circle", "Square"]
@export var shape = ""


func _ready():
	randomize()
	var shape_int = randi() % shapes.size()
	$Shapes.frame = shape_int
	shape = shapes[shape_int]
	print(shape)

func _process(delta):
	pass
