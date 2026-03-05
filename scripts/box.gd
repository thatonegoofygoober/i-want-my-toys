extends Area2D
@export var parent : Node2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("toys"):
		body.queue_free()
		await get_tree().process_frame
		parent.collected += 1
