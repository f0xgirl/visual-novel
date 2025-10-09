extends Control
class_name dialogue_scene

@export var dialogue: Array [Page]
@onready var text = %text

var skip_dialogue := false
var current_displayed_text := 0 #dont put in negatives, not sure how youd do that but dont.

func _ready() -> void:
	GlobalSignals.connect("send_text", text_advance)
	get_dialogue_string(current_displayed_text, dialogue[current_displayed_text].time_between_char)



func text_advance () -> void:
	current_displayed_text += 1
	print(current_displayed_text)
	get_dialogue_string(current_displayed_text, dialogue[current_displayed_text].time_between_char) #holy shit why did i name this so long



func display_selected_text (chr: String = "") -> void:
	text.text = chr
	

func get_dialogue_string(id: int, speed: float = 1.0) -> void:
	var in_dialogue := false
	var current_text := "" #string
	var text_length := dialogue[id].text.length() #int
	print(speed)
	for a in text_length:
		if Input.is_action_just_pressed("action1") and in_dialogue == true:
			print("pressed")
			skip_dialogue = true
		in_dialogue = true
		current_text += dialogue[id].text[a]
		display_selected_text(current_text)
		await get_tree().create_timer(speed).timeout
		if skip_dialogue:
			skip_dialogue = false
			break
		
