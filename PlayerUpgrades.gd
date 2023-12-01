extends Sprite2D
var mouseIn

# Called when the node enters the scene tree for the first time.
func _ready():
	mouseIn = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event.is_action_pressed("Click") and mouseIn == true:
		$Menu.visible = true
		$Menu.set_process(true)

func _on_area_2d_mouse_entered():
	mouseIn = true

func _on_area_2d_mouse_exited():
	mouseIn = false
