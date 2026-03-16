extends Control


func _start():
	TimeBeat.cuese(false)
	get_tree().change_scene_to_file("res://levels/level_1.tscn")
	
