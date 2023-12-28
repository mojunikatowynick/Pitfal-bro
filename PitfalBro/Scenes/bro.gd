class_name Bro 
extends CharacterBody2D

var speed = 400.0
var jump_speed = -500.0

# Get the gravity from the project settings so you can sync with rigid body nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	velocity.y += gravity * delta

	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = jump_speed

	var direction = Input.get_axis("Left", "Right")
	velocity.x = direction * speed

	move_and_slide()
