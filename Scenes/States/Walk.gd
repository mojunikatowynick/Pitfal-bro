extends State
class_name  Walk

@export var player: CharacterBody2D
@export var animator: Sprite2D

var direction
var speed: int = 200
var jump_speed = -550.0


func Enter():
	animator.frame = 1
	
func Physics_update(delta: float):
	
	player.velocity.y += player.gravity * delta

	direction = Input.get_axis("Left", "Right")
	player.velocity.x = direction * speed

	if Input.is_action_just_pressed("Jump") and player.is_on_floor():
		player.velocity.y = jump_speed
		Transitioned.emit(self, "Air")