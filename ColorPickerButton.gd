extends ColorPickerButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ColorPickerButton_color_changed(color):
	Global.color = color
	

func _on_ColorPickerButton_gui_input(event):
	if Input.is_action_just_pressed("mouse_left"):
		Global.color = self.color
