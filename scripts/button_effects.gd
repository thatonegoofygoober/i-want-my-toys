extends Node
class_name button_effects

@export var button_parent : BaseButton = get_parent()
@export var rotation : float = 3.0
@export var scale : Vector2 = Vector2(1.1,1.1)
@export var transtype : Tween.TransitionType
@export var easetype : Tween.EaseType
@export var anim_duration : float = 0.4
@export var color : Color
@export var want_color : bool

var tween : Tween

func _ready() -> void:
	
	button_parent.mouse_entered.connect(_on_mouse_hovered.bind(true))
	button_parent.mouse_exited.connect(_on_mouse_hovered.bind(false))
	button_parent.pivot_offset = Vector2(0.5,0.5)
func _on_mouse_hovered(hovered:bool):
	_kill_tween()
	tween.tween_property(button_parent,"scale"
	,scale if hovered else Vector2.ONE,anim_duration)
	tween.tween_property(button_parent,"rotation_degrees"
	,rotation * [-1.5,1.5].pick_random()   if hovered   else 0.0,anim_duration)
	if want_color == true:
		tween.tween_property(button_parent,"modulate",color if hovered else Color.BLACK,anim_duration)
func _kill_tween():
	if tween:
		tween.kill()
	tween = create_tween().set_ease(easetype).set_trans(transtype).set_parallel(true)
