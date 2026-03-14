extends Node2D
class_name Fader

@export var time : float = 2.0
@export var ease_in :  Tween.EaseType
@export var trans_type : Tween.TransitionType
@export var on_screen : VisibleOnScreenNotifier2D
@onready var parent = get_parent()

func _on_screen_entered():
	var tween : Tween = create_tween()
	tween.tween_property(parent, "modulate:a", 1.0, time).from(0.0)
	
	
func _ready() -> void:
	on_screen.screen_entered.connect(_on_screen_entered)
