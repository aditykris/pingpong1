extends KinematicBody2D

var speed = 400
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-.8,.8][randi() % 2]
	

func _physics_process(delta):
	var coll_object = move_and_collide(velocity * speed * delta)
	if coll_object:
		velocity = velocity.bounce(coll_object.normal)
		

func stop_ball():
	speed = 0		
	
func restart_ball():
	speed = 400	
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-.8,.8][randi() % 2]
