extends CharacterBody2D

@export var shapes = ["Star", "Triangle", "Circle", "Square"]
@export var shape = "Star"



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):


	if Input.is_action_just_pressed("Moving"):
#	move_and_slide()
		if Input.is_action_pressed("star"):
			$Shapes.frame = 0
			shape = shapes[0]
		
		if Input.is_action_pressed("triangle"):
			$Shapes.frame = 1
			shape = shapes[1]
		if Input.is_action_pressed("circle"):
			$Shapes.frame = 2
			shape = shapes[2]
			
		if Input.is_action_pressed("square"):
			$Shapes.frame = 3
			shape = shapes[3]
			
		if Input.is_action_just_pressed("ui_down"):
			position.y += 194 
		if Input.is_action_just_pressed("ui_up"):
			position.y -= 194 
		if Input.is_action_just_pressed("ui_left"):
			position.x -= 194
		if Input.is_action_just_pressed("ui_right"):
			position.x += 194
			#(0 + 5 + 1) % 5
#	move_and_slide()
	move_and_collide(velocity)
			
#	var collision_info = move_and_collide(velocity * delta)
#	if collision_info:
#		print(collision_info)
#		velocity = velocity.bounce(collision_info.get_normal())
#




func _on_area_2d_area_entered(area):
	if area.shape == shape:
		print("Success")
		area.hide() #TODO: CAN'T JUST HIDE
	else:
		print("Uh Oh")
