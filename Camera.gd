extends Camera

var camera_angle

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if Input.is_key_pressed(KEY_W):
		translation[2] -= .2
	if Input.is_key_pressed(KEY_S):
		translation[2] += .2
	if Input.is_key_pressed(KEY_A):
		translation[0] -= .2
	if Input.is_key_pressed(KEY_D):
		translation[0] += .2
	if Input.is_key_pressed(KEY_SHIFT):
		translation[1] -= .2
	if Input.is_key_pressed(KEY_SPACE):
		translation[1] += .2
	if Input.is_key_pressed(KEY_Q):
		rotation_degrees[1] += 1
	if Input.is_key_pressed(KEY_E):
		rotation_degrees[1] -= 1
	

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP:
			translation[1] += .2
		if event.button_index == BUTTON_WHEEL_DOWN:
			translation[1] -= .2
			
