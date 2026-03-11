extends Node2D

@export var text : String

func _ready() -> void:
	$RichTextLabel.text = "[rainbow]" +  text + "[/ranbiow]"
	$AnimationPlayer.play("fade in")
	$AnimationPlayer2.play("label fade in")
	
	



func _on_timer_timeout() -> void:
	queue_free() # Replace with function body.
