extends CharacterBody2D
class_name Bro

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var can_hang: bool = false

func _physics_process(_delta):
	move_and_slide()

func will_hang():
	can_hang = true
func wont_hang():
	can_hang = false
