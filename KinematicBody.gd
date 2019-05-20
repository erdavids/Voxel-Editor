extends KinematicBody

var camera_angle = 0

var velocity = Vector3()
var direction = Vector3()

var mouse_sensitivity = .1

const FLY_SPEED = 20
const FLY_ACCEL = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	
	direction = Vector3()
	
	var aim = $Head/Camera.get_global_transform().basis
	
	if Input.is_action_pressed("move_left"):
		direction -= aim.x 
	if Input.is_action_pressed("move_right"):
		direction += aim.x
	if Input.is_action_pressed("move_forward"):
		direction -= aim.z
	if Input.is_action_pressed("move_backward"):
		direction += aim.z
	if Input.is_action_pressed("move_up"):
		direction += aim.y
	if Input.is_action_pressed("move_down"):
		direction -= aim.y
		
	direction = direction.normalized()
	
	var target = direction * FLY_SPEED
	
	velocity = velocity.linear_interpolate(target, FLY_ACCEL * delta)
	
	move_and_slide(velocity)
	
	
func _input(event):
	if Input.is_action_pressed("mouse_right") and event is InputEventMouseMotion:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		self.rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		
		var change = -event.relative.y * mouse_sensitivity
		
		if change + camera_angle < 90 and change + camera_angle > -90:
			$Head/Camera.rotate_x(deg2rad(change))
			camera_angle += change
	if Input.is_action_just_released("mouse_right"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
