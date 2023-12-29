extends State
class_name  Hang

@export var player: CharacterBody2D
@export var animator: Sprite2D

var climb_speed: int = 100

func Enter():
	animator.frame = 3

func Physics_update(_delta: float):

	player.velocity.x = 0
	
	var direction = Input.get_axis("Down", "Up")
	player.velocity.y = climb_speed * -direction


	if Input.is_action_just_released("Catch") or !player.can_hang:
		Transitioned.emit(self, "Air")
	
	if Input.is_action_just_pressed("Jump"):
		Transitioned.emit(self, "Air")
		
