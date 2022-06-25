extends Node2D

var vel = 60

func _ready():

	pass
	
func _process(delta):
	var varx = 0
	var vary = 0
	if Input.is_action_pressed("ui_right"):
		varx += 1
	if Input.is_action_pressed("ui_left"):
		varx += -1
	if Input.is_action_pressed("ui_up"):
		vary += -1
	if Input.is_action_pressed("ui_down"):
		vary += 1
	translate(Vector2(varx,vary)*vel*delta)
	pass
