extends Node
var time
var playerCash
var companyCash
var playerClickAmount
var companyClickAmount

# Called when the node enters the scene tree for the first time.
func _ready():
	time = 480
	playerCash = 0
	companyCash = 0
	playerClickAmount = 1
	companyClickAmount = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func updateTime(t):
	time += t
	if time < 0:
		get_tree().quit()

func updatePlayerCash(c):
	playerCash += c
	
func updateCompanyCash(c):
	companyCash += c
	
func updatePlayerClickAmount(c):
	playerClickAmount += c

func updateCompanyClickAmount(c):
	companyClickAmount += c
