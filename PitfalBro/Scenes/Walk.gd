class_name Walk
extends State


signal input_given

func _ready():
	set_physics_process(false)
	
func _enter_state() -> void:
	set_physics_process(true)

func _exit_state():
	set_physics_process(false)

func _physics_process(_delta):
	if actor.velocity(length) > Vector2.ZERO:
		animator.frame = 1
