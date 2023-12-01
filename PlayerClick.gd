extends Sprite2D
var global
var mouseIn

# Called when the node enters the scene tree for the first time.
func _ready():
	global = get_node("/root/Global")
	mouseIn = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	pass

func _input(event):
	if event.is_action_pressed("Click") and mouseIn == true:
		global.updatePlayerCash(global.playerClickAmount)
		var tween = create_tween()
		tween.tween_property($Sprite2D, "scale", Vector2(.018, .018), .1)
		tween.tween_property($Sprite2D, "scale", Vector2(.015, .015), .1)


func _on_area_2d_mouse_entered():
	mouseIn = true


func _on_area_2d_mouse_exited():
	mouseIn = false
