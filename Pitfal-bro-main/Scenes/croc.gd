extends CharacterBody2D

@onready var anim = $AnimationPlayer
@export var mode: String 

func _ready():
	anim.play(mode)
	
	
func _on_kill_area_body_entered(body):
	if "death" in body:
		body.death()



func _on_animation_player_animation_finished(anim_name):
	
	if anim_name == "Safe":
		anim.play("Kill")
	elif anim_name == "Kill":
		anim.play("Safe")
	else:
		pass
