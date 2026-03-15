
extends AudioStreamPlayer

@onready var parent : Node2D =  get_parent()
func _on_finished() -> void:
	playing = true # Replace with function body.

func _process(delta: float) -> void:
	if parent.time <15.0:
		pitch_scale = 0.85
		volume_db = -3.382
