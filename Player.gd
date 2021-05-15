extends KinematicBody2D

var speed =400

func _physics_process(delta):
	var velo = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velo.y -= 1
	if Input.is_action_pressed("ui_down"):
		velo.y += 1
	move_and_slide(velo*speed)
				

