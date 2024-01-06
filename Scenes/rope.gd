extends StaticBody2D

@export var swing_force: int = 100
var rope_pieces = []
var rope = null


func _ready():
	for child in self.get_children(): 
		if child is RigidBody2D:
			child.connect("active_rope", new_rope)
			rope_pieces.push_back(child)

func new_rope(active_rope):
	rope = active_rope

func _process(_delta):
	if rope!= null:
		print(rope)
		if Input.is_action_just_pressed("Right"):
				$rope.apply_impulse(Vector2.RIGHT * swing_force)
	
		if Input.is_action_just_pressed("Left"):
				$rope.apply_impulse(Vector2.LEFT * swing_force)
