extends RigidBody2D
class_name RopePiece
signal active_rope()

func _on_player_detector_body_entered(body):
	
	var this_rope = self.get_name()
	active_rope.emit(this_rope)
	Global.current_rope_posittion = self.global_position

	if "on_line" in body:
		body.on_line()
	else:
		pass

func _on_player_detector_body_exited(body):
	if "off_line" in body:
		body.off_line()
	else:
		pass
