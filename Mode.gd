extends VBoxContainer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Add_pressed():
	Global.mode = "Add"


func _on_Remove_pressed():
	Global.mode = "Remove"


func _on_Paint_pressed():
	Global.mode = "Paint"
