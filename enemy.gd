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

func _process(delta):
    # Move the enemy 194 units to the left every second
    position.x -= speed * delta
    speed += 0.001
