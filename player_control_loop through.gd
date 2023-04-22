extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	# Add the gravity.
#	if not is_on_floor():
#		velocity.y += gravity * delta
#
#	# Handle Jump.
#	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
#		velocity.y = JUMP_VELOCITY
#
#	# Get the input direction and handle the movement/deceleration.
#	# As good practice, you should replace UI actions with custom gameplay actions.
#	var direction = Input.get_axis("ui_left", "ui_right")
#	if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#
#	move_and_slide()
	if Input.is_action_just_pressed("ui_down")|| Input.is_action_just_pressed("ui_up"):
		if Input.is_action_just_pressed("ui_down"):
			position.y += 194 
		if Input.is_action_just_pressed("ui_up"):
			position.y -= 194 
		if Input.is_action_pressed("ui_left"):
			$Shapes.frame = ($Shapes.frame+4-1)%4
			# index = (index + rangeLength - decrementAmount) % rangeLength
			#$AnimatedSprite2D.set_frame_and_progress()
		if Input.is_action_pressed("ui_right"):
			$Shapes.frame = ($Shapes.frame+4+1)%4
			#(0 + 5 + 1) % 5
			
		

