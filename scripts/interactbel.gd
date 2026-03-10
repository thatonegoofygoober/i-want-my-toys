extends Node2D
class_name interactble_toy
@export var spawnpoint : Marker2D
@export var button : Button
@export var toy_spawn : Marker2D
@export var screen_checker : VisibleOnScreenNotifier2D
@export var partical : GPUParticles2D
@export var sound : AudioStreamPlayer
var stream_sound : AudioStreamWAV= preload("res://Assets/sounds/pop (2).wav")
var chance :int
@onready var toys : Array
var pressed_time :int= 0
var pressed : bool = false
@onready var rand_toy : Toy 
func take_toy_and_hide_it_for_interactble():
		sound.stream = stream_sound
		toys= get_tree().get_nodes_in_group("toys")
		rand_toy = toys.pick_random()
		print("the chosen toys position is",rand_toy.global_position)
		print("size of this kaka toys is ....",toys.size())
		pressed = true
		print("works")
		
		print("thechosen toy ia",rand_toy)
		print("the chosen toys position is",rand_toy.global_position)
		rand_toy.global_position = toy_spawn.global_position
		sound.play()
		await get_tree().process_frame
		queue_free()
		print("the chosen toys position is",rand_toy.global_position)
		print("the toys spawnpos is ",toy_spawn.global_position)
		if rand_toy.global_position == toy_spawn.global_position:
			print("it works good")
	
	
func _screen_checking_entered():
	partical.emitting = true
func _screen_checking_exited():
	partical.emitting = false
func _ready() -> void:
	randomize()
	
	chance = randi_range(0,1)
	if chance == 1:
		global_position = spawnpoint.global_position
	screen_checker.screen_entered.connect(_screen_checking_entered)
	screen_checker.screen_exited.connect(_screen_checking_exited)
	button.pressed.connect(take_toy_and_hide_it_for_interactble)
	await get_tree().process_frame
	
	
