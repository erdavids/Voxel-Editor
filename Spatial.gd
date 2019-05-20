extends Spatial

var new_color = Color(0, 1, 1, 1)
var cube = preload("res://Cube.tscn").instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	print(cube)
	
	
	add_child(cube)
	cube.translation = Vector3(0, 0, 0)
	cube.get_surface_material(0).albedo_color = Global.color
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
