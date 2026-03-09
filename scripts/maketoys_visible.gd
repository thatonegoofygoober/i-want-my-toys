extends Node

#var toys : Array = get_tree().get_nodes_in_group("toys")
var pressed = false

func _input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("k"):
		process_mode = Node.PROCESS_MODE_ALWAYS 
		print("pressed is",pressed)
		print("pressed")
		pressed = !pressed
		get_tree().paused =  pressed
	
