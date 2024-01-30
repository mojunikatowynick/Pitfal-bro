extends State
class_name  LedgeHang

@export var player: CharacterBody2D
@export var animator: Sprite2D
@onready var AP = $"../../AnimationPlayer"

var direction

func Enter():

	player.position = Global.ledge_posittion
	
func Physics_update(_delta: float):
	
	AP.play("Hang")
	
	player.velocity = Vector2.ZERO

	if Input.is_action_just_released("Up"):
		player.position.y -= 64
		Transitioned.emit(self, "Air")

	if Input.is_action_just_pressed("Jump"):
		player.velocity.y = player.jump_speed
		Transitioned.emit(self, "Air")
		
	if Input.is_action_just_pressed("Down"):
		Transitioned.emit(self, "Air")
