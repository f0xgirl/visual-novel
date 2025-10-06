extends Node

const TEST_DIALOGUE = preload("res://Scenes/test_dialogue.tscn")

func _ready() -> void:
	var test = TEST_DIALOGUE.instantiate()
	add_child(test)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("action1"):
		GlobalSignals.emit_signal("send_text")
