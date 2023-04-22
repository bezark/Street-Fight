extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):


	if Input.is_action_just_pressed("Moving"):
#	move_and_slide()
		if Input.is_action_pressed("star"):
			$Shapes.frame = 0
		
		if Input.is_action_pressed("triangle"):
			$Shapes.frame = 1
		if Input.is_action_pressed("circle"):
			$Shapes.frame = 2
		
		if Input.is_action_pressed("square"):
			$Shapes.frame = 3
			
		if Input.is_action_just_pressed("ui_down"):
			position.y += 194 
		if Input.is_action_just_pressed("ui_up"):
			position.y -= 194 
		if Input.is_action_just_pressed("ui_left"):
			position.x -= 194
		if Input.is_action_just_pressed("ui_right"):
			position.x += 194
			#(0 + 5 + 1) % 5
			
			

