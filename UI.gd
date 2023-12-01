extends Control
var global

func _ready():
	global = get_node("/root/Global")
	
func _physics_process(delta):
	$Time/Label.text = "Time: " + str(global.time)
	$Player/Label.text = "Player Cash: $" + str(global.playerCash) + "K"
	$Company/Label.text = "Company Cash: $" + str(global.companyCash) + "K"

func _on_timer_timeout():
	global.updateTime(-1)
