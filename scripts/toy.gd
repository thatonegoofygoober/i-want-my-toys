extends CharacterBody2D
class_name Toy

@export var gravity_weight: float = 1200.0
var grabbed :bool= false
@export var button : Button
@export var collision : CollisionShape2D
@export var size_change :Vector2 = Vector2(1.2,1.2)

var of : Vector2

func _ready() -> void:
	print(button)
	print(button.button_up.connect(_on_button_up))
	print(button.button_down.connect(_on_button_down))
	add_to_group("toys")
	
	button.button_up.connect(_on_button_up)
	button.button_down.connect(_on_button_down)
func _on_button_up():
	print("buttonnotpressed")
	grabbed = false

func _on_button_down(): 
	print("button pressingh")
	grabbed = true
	of = lerp(get_global_mouse_position(), - global_position,0.55)
	size_change = lerp(size_change,Vector2(1.5,1.5),0.5) 

















func _physics_process(delta: float) -> void:
	
	print(grabbed)
	if grabbed == true:
		collision.disabled =true
		global_position = get_global_mouse_position() - of
		velocity.y = 0
		scale =  size_change
	elif grabbed ==false:
		scale = Vector2(1.0,1.0)
		collision.disabled = false
		
	
	velocity.y += gravity_weight * delta
	move_and_slide()
