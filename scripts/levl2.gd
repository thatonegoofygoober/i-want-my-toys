
extends Node2D
@export var collected : int = clamp(0,0,max_co)
@export var max_co : int = 10
@export var time : float = 60.0
var secs : int = int(time) % 60
var mins : int = int(time) / 60


var total_time : int = 30
@onready var co_text = $Camera2D/Control/CanvasLayer/Label
@onready var count_text = $Camera2D/Control/CanvasLayer/Label2
@export var start_color :Color= Color.BLACK
@export var end_color :Color= Color.RED
var can_be_red : bool = false
var tran_colors := start_color.lerp(end_color,1.0)
var color_time :float = 0.0
var time_cangodown : bool = true
func _ready() -> void:
	time = clamp(time,0,time)
	TimeBeat.cuese(true)
func _process(delta: float) -> void:
	secs = int(time) % 60
	mins = int(time) / 60
	_collecter()
	_countdown(delta)



func _countdown(t):
	print("can go down is",time_cangodown)
	#if time_cangodown:
	time -= t
		
	time = clamp(time,0,time)
	
	count_text.text = str(mins) + ":" +str(secs).pad_zeros(2) + " left"
	if time  <=0 and collected <max_co:
		time_cangodown = false
		time = 0
		time = clamp(0,0,0)
		co_text.text = "you lose"
		await get_tree().create_timer(3).timeout
		get_tree().reload_current_scene()
	elif collected ==max_co and time!= 0:
		time_cangodown = false
		time = 0
		time = clamp(0,0,0)
	
	elif time < total_time/2 and can_be_red == false:
		
		
		co_text.add_theme_color_override("font_color",tran_colors)
		count_text.add_theme_color_override("font_color",tran_colors)


func _collecter():
	if collected == max_co:
		can_be_red = true
		print("idk")
		co_text.add_theme_color_override("font_color",Color.GREEN)
		count_text.add_theme_color_override("font_color",Color.GREEN)

		co_text.text  = str("COLLECTED: ",collected," /",max_co," you found all toys!!!")
		
		await get_tree().create_timer(3).timeout
		get_tree().change_scene_to_file("res://levels/level_3.tscn")
	if collected + 1 and collected !=max_co:
		co_text.text  = str("COLLECTED: ",collected," /",max_co)
