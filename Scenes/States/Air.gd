extends State
class_name  Air

@export var player: CharacterBody2D
@export var animator: Sprite2D
var direction
var speed: int = 200

func Enter():
	animator.frame = 2
	
func Physics_update(delta: float):

	player.velocity.y += player.gravity * delta

	if player.is_on_floor():
		Transitioned.emit(self, "Walk")
	
	if Input.is_action_pressed("Catch") and player.can_hang:
		Transitioned.emit(self, "Hang")

	direction = Input.get_axis("Left", "Right")
	player.velocity.x = direction * speed
