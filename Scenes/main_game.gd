extends Node2D

func _on_ledge_body_entered(body):
	if "will_hang" in body:
		body.will_hang()
	else:
		pass
	
func _on_ledge_body_exited(body):
	if "wont_hang" in body:
		body.wont_hang()
	else:
		pass
