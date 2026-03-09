extends Node
class_name interactble_toy
@export var spawnpoint : Marker2D
@export var button : Button
var toys : Array = get_tree().get_nodes_in_group("toys")
var pressed :int= 0

func take_toy_and_hide_it_for_interactble():
	if pressed == 0:
		var rand_toy : Toy = toys.pick_random()
		pressed += 1
		
		rand_toy.global_position = self.global_position + Vector2(0,100)
	
	

func _ready() -> void:
	button.pressed.connect(take_toy_and_hide_it_for_interactble)
	take_toy_and_hide_it_for_interactble()
	
