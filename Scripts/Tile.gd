extends KinematicBody2D

var speed = 50

func _process(delta):
	global_position.y += speed*delta	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
