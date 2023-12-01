extends Node
var time
var playerCash
var companyCash
var playerClickAmount
var companyClickAmount
var sabotageAmount
var playerPassiveAmount
var companyPassiveAmount
var sabotageChance

# Called when the node enters the scene tree for the first time.
func _ready():
	time = 480
	playerCash = 0
	companyCash = 0
	playerClickAmount = 1
	companyClickAmount = 1
	sabotageAmount = 100
	playerPassiveAmount = 0
	companyPassiveAmount = 0
	sabotageChance = .05


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func updateTime(t):
	time += t
	updatePlayerCash(playerPassiveAmount)
	updateCompanyCash(companyPassiveAmount)
	if time < 0:
		get_tree().quit()

func updatePlayerCash(c):
	playerCash += c
	if (c > 0):
		companyCash -= c
	if companyCash < 0:
		get_tree().change_scene_to_file("res://lose.tscn")
	elif playerCash >= 25000:
		get_tree().change_scene_to_file("res://win.tscn")
	
func updateCompanyCash(c):
	companyCash += c
	if companyCash > 25000:
		get_tree().change_scene_to_file("res://lose.tscn")
	
func updatePlayerClickAmount(c):
	playerClickAmount += c

func updateCompanyClickAmount(c):
	companyClickAmount += c
	
func updatePlayerPassiveAmount(c):
	playerPassiveAmount += c
	
func updateCompanyPassiveAmount(c):
	companyPassiveAmount += c
	
func updateSabotageAmount(c):
	sabotageAmount += c
