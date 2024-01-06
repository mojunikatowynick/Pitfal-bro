extends State
class_name  LineHang

@export var player: CharacterBody2D
@export var animator: Sprite2D

var direction

func Enter():
	animator.frame = 3
	player.position = Global.current_rope_posittion
	
func Physics_update(_delta: float):
	
	player.velocity = Vector2.ZERO

	if Input.is_action_just_released("Up") and player.line_hang:
		pass

	if Input.is_action_just_pressed("Down"):
		pass

	if Input.is_action_just_pressed("Jump") and player.line_hang:
		player.velocity.y = player.jump_speed
		Transitioned.emit(self, "Air")
		

