extends Node2D

var color = Color(0, .9, .9, 1)

var the_all_cube = []

var mode = "Add"
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func all_cube_contains(pos):
	return the_all_cube.has(pos)

func add_to_the_all_cube(pos):
	the_all_cube.append(pos)
	
func remove_from_the_all_cube(pos):
	the_all_cube.erase(pos)