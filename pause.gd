extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _input(event):
	if Input.is_action_just_pressed("escape"):
		print(Input.mouse_mode)
		if get_tree().paused:
			get_tree().paused = false
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			get_tree().paused = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
