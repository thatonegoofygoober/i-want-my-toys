extends Camera2D

@export var speed : float = 100

var dire : Vector2 


func _cam_move():
	
	dire = Input.get_vector("LEFT","RIGHT","UP","DOWN")
	if dire:
		position += dire * speed

func _physics_process(delta: float) -> void:
	_cam_move()
