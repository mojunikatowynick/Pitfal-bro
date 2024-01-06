extends CharacterBody2D
class_name Bro

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var move_speed: int = 200
@export var jump_speed: int = -550
@export var climb_speed: int = 100

var can_hang: bool = false
var ledge: bool = false
var line_hang: bool = false
var attached_rope_id
var attached_rope


func _physics_process(_delta):
	move_and_slide()
	if velocity.x > 0:
		$Sprite2D.scale.x = 1
	elif velocity.x < 0:
		$Sprite2D.scale.x = -1


func will_hang():
	can_hang = true
func wont_hang():
	can_hang = false
func on_ledge():
	ledge = true
func off_ledge():
	ledge = false
func on_line():
	line_hang = true
func off_line():
	line_hang = false



#func _on_line_detection_body_entered(body:RopePiece):
	#if !line_hang:
		#line_hang = true
		#attached_rope_id = body.get_instance_id()
		#print(attached_rope_id)
		#attached_rope = body.parent()




func _on_detector_body_entered(body):
	attached_rope_id = body.get_instance_id()

