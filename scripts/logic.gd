extends Node

@export var controller: Array [Page]
var current_place: int = 0


func advance_dialogue() -> void:
    current_place += 1

func give_dialogue(index: int) -> String:
    return controller.get(index)
