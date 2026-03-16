extends Node2D


var mouse_pos : Vector2

var grab_cursor : Texture = preload("res://Assets/sprites/others/Untitled_Artwork 3.png")
var cursor : Texture = preload("res://Assets/sprites/others/Untitled_Artwork 1.png")
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _input(event: InputEvent) -> void:
	queue_redraw()
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			queue_redraw()
			mouse_pos = get_global_mouse_position()
			
			print("mouse is",event.is_pressed())
			Input.set_custom_mouse_cursor(grab_cursor,Input.CURSOR_ARROW,Vector2(70,70))
			Input.set_custom_mouse_cursor(grab_cursor,Input.CURSOR_POINTING_HAND,Vector2(70,70))
		else:
			Input.set_custom_mouse_cursor(cursor,Input.CURSOR_ARROW,Vector2(70,70))
			Input.set_custom_mouse_cursor(grab_cursor,Input.CURSOR_POINTING_HAND,Vector2(70,70))

func _draw():
	draw_circle(mouse_pos,20.0,Color.BLUE,true,1.0)
