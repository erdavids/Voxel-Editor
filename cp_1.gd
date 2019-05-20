extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_cp_1_pressed():
	#$Node2D/ColorRect.color = Color(Color.green)
	Global.color = Color.green

func _on_cp_2_pressed():
	Global.color = Color.gray


func _on_cp_3_pressed():
	Global.color = Color.peachpuff


func _on_cp_4_pressed():
	Global.color = Color.skyblue


func _on_cp_5_pressed():
	Global.color = Color.pink
	
func _on_cp_6_pressed():
	Global.color = Color.fuchsia

