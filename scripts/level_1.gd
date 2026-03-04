extends Node2D
@export var collected : int = clamp(0,0,max_co)
@export var max_co : int = 4
var time : float = clamp(20,0,20)
@onready var co_text = $Camera2D/Control/CanvasLayer/Label
@onready var count_text = $Camera2D/Control/CanvasLayer/Label2
func _process(delta: float) -> void:
	
	_collecter()
	_countdown(delta)



func _countdown(t):
	time -= t
	time = clamp(time,0,20)
	
	count_text.text = str(int(time),"left")
	if time == 0 and collected <max_co:
		
		co_text.text = "you lose"
		await get_tree().create_timer(3).timeout
		get_tree().reload_current_scene()
	elif collected ==max_co and time!= 0:
		time = 0
		time = clamp(0,0,0)



func _collecter():
	if collected == max_co:
		print("idk")
		co_text.text  = str("COLLECTED: ",collected," /",max_co," you found all toys!!!")
		await get_tree().create_timer(3).timeout
		get_tree().reload_current_scene()
	if collected + 1 and collected !=max_co:
		co_text.text  = str("COLLECTED: ",collected," /",max_co)
