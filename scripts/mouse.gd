extends Node



var grab_cursor : Texture = preload("res://Assets/sprites/others/Untitled_Artwork 3.png")
var cursor : Texture = preload("res://Assets/sprites/others/Untitled_Artwork 1.png")
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(grab_cursor,Input.CURSOR_ARROW,Vector2(70,70))
		else:
			Input.set_custom_mouse_cursor(cursor,Input.CURSOR_ARROW,Vector2(70,70))
