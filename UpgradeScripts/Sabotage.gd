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
		var chance = randf()
		if chance <= .05:
			get_tree().change_scene_to_file("res://lose.tscn")
		else:
			global.updateCompanyCash(-global.sabotageAmount)


func _on_area_2d_mouse_entered():
	mouseIn = true


func _on_area_2d_mouse_exited():
	mouseIn = false
