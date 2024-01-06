extends State
class_name  LedgeHang

@export var player: CharacterBody2D
@export var animator: Sprite2D

var direction

func Enter():
	animator.frame = 3
	player.position = Global.ledge_posittion
	
func Physics_update(_delta: float):
	
	player.velocity = Vector2.ZERO

	if Input.is_action_just_released("Up") and player.ledge:
		player.position.y -= 64
		Transitioned.emit(self, "Air")

	if Input.is_action_just_pressed("Jump") and player.ledge:
		player.velocity.y = player.jump_speed
		Transitioned.emit(self, "Air")
		
	if Input.is_action_just_pressed("Down"):
		Transitioned.emit(self, "Air")
