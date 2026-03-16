extends Node

var time : float = 0.0
var secs : int = int(time) % 60
var mins : int = int(time) / 60
var total_time = str(mins) + ":" + str(secs).pad_zeros(2)
var total_time2 = mins + secs
@onready var current_scene :bool = false
var levels : Array = ["res://levels/level_1.tscn",
"res://levels/level_2.tscn",
"res://levels/level_3.tscn",
"res://levels/level_4.tscn"]
func _process(delta: float) -> void:
	print("time is",time)
	if current_scene == true:
		time += delta
		

func cuese(boo: bool):
	current_scene = boo
