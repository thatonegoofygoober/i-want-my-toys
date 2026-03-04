extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("toys"): # Replace with function body.
		body.position = $"../Camera2D".position
