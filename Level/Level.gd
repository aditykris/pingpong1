extends Node

var pscore=0
var oscore=0

func _on_Left_body_entered(body):
	$Ball.position= Vector2(100,100)
	oscore = oscore + 1
	get_tree().call_group('Ballgroup','stop_ball')
	$Timer.start()
	$Countdown.visible=true

func _on_Right_body_entered(body):
	$Ball.position= Vector2(100,100)
	pscore = pscore + 1
	get_tree().call_group('Ballgroup','stop_ball')
	$Timer.start()
	$Countdown.visible=true
	
func _process(delta):
	$Pscore.text = str(pscore)
	$Oscore.text = str(oscore)
	$Countdown.text= str(int($Timer.time_left)+1)
	
func _on_Timer_timeout():
	get_tree().call_group('Ballgroup','restart_ball')
	$Countdown.visible=false
