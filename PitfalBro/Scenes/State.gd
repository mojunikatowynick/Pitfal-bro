class_name State
extends Node

signal state_finished
@onready var animator = $"../Sprite2D"
@onready var actor = $".."

func _enter_state() -> void:
	pass
	
func _exit_state() -> void:
	pass
