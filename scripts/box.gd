extends Area2D
@export var parent : Node2D
var time :float = 0.0
var Body : Node2D

func _on_body_entered(body: Node2D) -> void:
	Body = body
	if body.is_in_group("toys"):
		
		
		$Pop.play()
		body.queue_free()
		await get_tree().process_frame
		parent.collected += 1
