extends State
class_name  VinesHang

@export var player: CharacterBody2D
@export var animator: Sprite2D


func Enter():
	animator.frame = 3

func Physics_update(_delta: float):


	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	player.velocity = player.climb_speed * direction


	if Input.is_action_just_pressed("Catch") or !player.can_hang:
		Transitioned.emit(self, "Air")
	
	if Input.is_action_just_pressed("Jump"):
		player.velocity.y = player.jump_speed
		Transitioned.emit(self, "Air")
		
