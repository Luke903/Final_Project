extends ColorRect
var mouseIn
var global

# Called when the node enters the scene tree for the first time.
func _ready():
	mouseIn = false
	global = get_node("/root/Global")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("Click") and mouseIn:
		global.updateSabotageAmount(500)
		global.updatePlayerCash(-850)
		visible = false
		set_process(false)

func _on_area_2d_mouse_entered():
	mouseIn = true


func _on_area_2d_mouse_exited():
	mouseIn = false
