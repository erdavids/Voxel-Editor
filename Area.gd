extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input_event(camera, event, click_position, click_normal, shape_idx):
	#if (event is InputEventMouseButton):
	if Input.is_action_just_pressed("mouse_left") and Global.mode == "Add":	
		
		var dir = "x"
		
		var x_diff = abs(click_position[0] - get_parent().translation[0])
		
		var y_diff = abs(click_position[1] - get_parent().translation[1])
		
		var z_diff = abs(click_position[2] - get_parent().translation[2])
		
		var pos = 2
		
		if x_diff > y_diff:
			dir = "x"
			if click_position[0] < get_parent().translation[0]:
				pos = -2
			if x_diff < z_diff:
				dir = "z"
				if click_position[2] < get_parent().translation[2]:
					pos = -2
				else:
					pos = 2
		else:
			dir = "y"
			if click_position[1] < get_parent().translation[1]:
				pos = -2
			else:
				pos = 2
			if y_diff > z_diff:
				pass
			else:
				dir = "z"
				if click_position[2] < get_parent().translation[2]:
					pos = -2
				else:
					pos = 2

		
		
		
		var cube2 = load("res://Cube.tscn").instance()
		
		
		if dir == "x":
			cube2.translation = Vector3(get_parent().translation[0] + pos, get_parent().translation[1], get_parent().translation[2])
		elif dir == "y":
			cube2.translation = Vector3(get_parent().translation[0], get_parent().translation[1] + pos, get_parent().translation[2])
		else:
			cube2.translation = Vector3(get_parent().translation[0], get_parent().translation[1], get_parent().translation[2] + pos)
		
		
		
		var material = SpatialMaterial.new()
		material.albedo_color = Global.color
		cube2.set_material_override(material)
		
		if Global.all_cube_contains(cube2.translation) == false:
			get_parent().get_parent().add_child(cube2)
			Global.add_to_the_all_cube(cube2.translation)
		else:
			cube2.queue_free()
			print("Cube2")
			print(cube2)
			print(cube2.translation)
		
	
	elif Input.is_action_just_pressed("mouse_left") and Global.mode == "Remove":
		print("Cube Removed")
		print(get_parent())
		Global.remove_from_the_all_cube(get_parent().translation)
		get_parent().queue_free()
	elif Input.is_action_just_pressed("mouse_left") and Global.mode == "Paint":
		var material = SpatialMaterial.new()
		material.albedo_color = Global.color
		get_parent().set_material_override(material)
