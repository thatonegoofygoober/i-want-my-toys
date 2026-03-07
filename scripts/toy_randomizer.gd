extends Node2D
@export var toys : Array[Toy]
@export var markers : Array[Marker2D]
@export var  rotation_random : Array[int] = [0.0,0.2,0.5,0.9,1.0]


func _ready() -> void:
	randomize()
	markers.shuffle()
	toys.shuffle()
	randomize()
	_place_toys_randomly()
func _place_toys_randomly():
	for i in range(toys.size()):
		randomize()
		toys[i].rotation_degrees = rotation_random[i]
		toys[i].global_position = markers[i].global_position
