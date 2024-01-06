extends Area2D

func _on_body_entered(body):
	ledge_position()
	if "on_ledge" in body:
		body.on_ledge()
	else:
		pass

func _on_body_exited(body):
	if "off_ledge" in body:
		body.off_ledge()
	else:
		pass

func ledge_position():
	Global.ledge_posittion = $LedgePos.global_position
	print(Global.ledge_posittion)
