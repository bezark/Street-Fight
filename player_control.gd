extends CharacterBody2D

@export var shapes = ["Star", "Triangle", "Circle", "Square"]
@export var shape = "Star"



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	if $Area2D.position != Vector2.ZERO:
		var moveTarget = $Area2D.get_overlapping_areas()
		if moveTarget:
			if moveTarget[0].shape == shape:
				position += $Area2D.position
				$Area2D.position = Vector2.ZERO
			else:
				$Area2D.position = Vector2.ZERO
		else:
			position += $Area2D.position
			$Area2D.position = Vector2.ZERO
	elif $Area2D.overlaps_area($"../Enemy"):
		position.x -= 194
		

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
			$Area2D.position.y += 194 
		if Input.is_action_just_pressed("ui_up"):
			$Area2D.position.y -= 194 
		if Input.is_action_just_pressed("ui_left"):
			$Area2D.position.x -= 194
		if Input.is_action_just_pressed("ui_right"):
			$Area2D.position.x += 194
			#(0 + 5 + 1) % 5	
		
#		if move_and_slide():
#			var hitThing = get_last_slide_collision()
#			print("HITTING: ",hitThing)
	# IF presed: Check next space, if contains shape check shape if good accept move, if bad reject mov

func _on_area_2d_area_entered(area):
	
	if area==$"../Street_Floor/Walls/Kill":
		print("GAME OVER")
	else:
		if area.shape == shape: 
			print("Success")
			area.queue_free()  # Remove the enemy from the scene
#		else:
#			print(area.shape)
#			position.x -= 194 #ok mvp but has nasty glitch where you move into the space, check and then move out. Should instead just not be able to enter. oh the enemies should be rigid.

