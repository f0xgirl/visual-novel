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
	print("i wokr")
	print(dialogue[id].text)
	text.text = dialogue[id].text
	
