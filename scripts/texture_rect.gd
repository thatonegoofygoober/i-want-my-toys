extends TextureRect

var toy_textires : Array = [preload(
"res://Assets/sprites/toys/mycoolball.png"),
preload("res://Assets/sprites/toys/Teddybear .png"),
preload("res://Assets/sprites/toys/The bird .png"),
preload("res://Assets/sprites/toys/toy_blocks.png"),
preload("res://Assets/sprites/toys/Untitled_Artwork 1.png")]
var random_toy_texture 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	random_toy_texture = toy_textires.pick_random()
	
	texture = random_toy_texture
