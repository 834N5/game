extends Node3D


@onready var pauseMenu = $PauseMenu

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _input(_event):
	if Input.is_action_just_pressed("escape"):
		if get_tree().paused:
			get_tree().paused = false
			pauseMenu.visible = !pauseMenu.visible
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			get_tree().paused = true
			pauseMenu.visible = !pauseMenu.visible
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
