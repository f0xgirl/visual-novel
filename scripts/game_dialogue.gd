extends Control
# this is where all the dialogue goes idk

@export var dialogue: Array [Page]
@onready var text = %text

var current_displayed_text := 0 #dont put in negatives, not sure how youd do that but dont.

func _ready() -> void:
	GlobalSignals.connect("send_text", text_advance)
	display_selected_text(current_displayed_text)



func text_advance () -> void:
	current_displayed_text += 1
	print(current_displayed_text)
	display_selected_text(current_displayed_text)



func display_selected_text (id: int) -> void:
	print(dialogue[id].text)
	text.text = dialogue[id].text
	

func get_dialogue_string(id: int) -> void:
	var current_text: String
	var text_length := dialogue[id].text.length()
	for a in text_length:
		current_text += dialogue[id].text[a]
		print(current_text)
		await get_tree().create_timer(1).timeout
	#print(dialogue[id].text[1])



func scroll_text (text: String) -> void:
	pass
