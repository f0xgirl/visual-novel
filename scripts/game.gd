extends Node

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("action1"):
		GlobalSignals.emit_signal("send_text")
