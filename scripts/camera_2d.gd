extends Camera2D

@export var speed : float = 3500

var dire : Vector2 
var newposition : Vector2 

func _cam_move(t):
	newposition = position + dire * speed * t
	#newposition.x = clamp(newposition.x,limit_left,limit_right)
	#newposition.y = clamp(newposition.y,limit_top,limit_bottom)
	dire = Input.get_vector("LEFT","RIGHT","UP","DOWN")
	if dire:
		position = newposition
		
	
	
	

func _physics_process(delta: float) -> void:
	_cam_move(delta)
