extends Node2D
var mouseIn

# Called when the node enters the scene tree for the first time.
func _ready():
	mouseIn = false
	set_process(false)
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if mouseIn and event.is_action_pressed("Click"):
		$Exit/AnimatedSprite2D.animation = "Pressed"
		$Exit/AnimatedSprite2D.play()

func _on_area_2d_mouse_entered():
	mouseIn = true


func _on_area_2d_mouse_exited():
	mouseIn = false


func _on_animated_sprite_2d_animation_finished():
	visible = false
	set_process(false)
	$Exit/AnimatedSprite2D.animation = "default"
