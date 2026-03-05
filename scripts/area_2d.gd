extends Area2D

@export var fall_back_pos : Marker2D
@onready var cam_pos :Vector2 = get_tree().get_first_node_in_group("camera").global_position
func _on_body_entered(body: Node2D) -> void:
	print("work")
	if body.is_in_group("toys"):
		print("work") # Replace with function body.
		body.global_position =  fall_back_pos.global_position
