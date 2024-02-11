extends VBoxContainer

@onready var pauseMenu = $"../.."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_resume_pressed():
	pauseMenu.visible = !pauseMenu.visible
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_restart_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://obby/ok.tscn")

func _on_quit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menu/menu.tscn")
