extends Node2D
@export var toys : Array[Toy]
@export var markers : Array[Marker2D]
@onready var markers2 : Array = get_tree().get_nodes_in_group("marker")
@export  var  rotation_random : Array[int] = [0.0,0.2,0.5,0.9,1.0]
@onready var toys2 : Array = get_tree().get_nodes_in_group("toys")

func _ready() -> void:
	print(get_tree().get_nodes_in_group("marker"))
	
	await get_tree().process_frame
	print(get_tree().get_nodes_in_group("marker"))
	markers2 = get_tree().get_nodes_in_group("marker")
	randomize()
	markers2.shuffle()
	toys2.shuffle()
	
	_place_toys_randomly()
func _place_toys_randomly():
	print("markerr2 size is",markers2.size())
	prints("markersize",markers2.size(),"toyssize",toys2.size(),toys2,markers2)
	for i in range(toys2.size()):
		prints(toys2[i],markers2[i])
		randomize()
		
		toys2[i].global_position = markers2[i].global_position
