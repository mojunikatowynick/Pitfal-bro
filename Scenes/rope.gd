extends StaticBody2D

@export var swing_force: int = 100
@onready var rope_pieces = []
var array = []
var rope = null
var current_rope


func _ready():
	for child in self.get_children(): 
		if child is RigidBody2D:
			var child_name = child.get_name()
			rope_pieces.push_back(child_name)
			
	print(rope_pieces)
	current_rope = rope_pieces.find("RopeP", 0)
	

func _process(_delta):
	print(current_rope)

