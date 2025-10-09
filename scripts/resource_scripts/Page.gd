extends Resource
class_name Page

enum current_character_talking{
    LEFT = 0,
    RIGHT = 1
}


@export_category("text")
@export_multiline var text: String
@export var time_between_char: float = 1.0
@export var character_talking: current_character_talking
@export_category("dialogue_options")
@export var multiple_choice: bool = false
@export_multiline var options: Array [String] = []
