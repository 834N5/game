extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewportWidth = get_viewport().size.x
	var viewportHeight = get_viewport().size.y
	var aspectRatio = float(viewportWidth)/viewportHeight
	var imageAspectRatio = texture.get_size().x/texture.get_size().y
	var scale
	scale = viewportWidth / $".".texture.get_size().x
	if aspectRatio > imageAspectRatio:
		scale = viewportHeight / $".".texture.get_size().y
	else:
		scale = viewportWidth / $".".texture.get_size().x
	$".".set_position(Vector2(viewportWidth/2, viewportHeight/2))
	$".".set_scale(Vector2(scale, scale))
