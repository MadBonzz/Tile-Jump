extends KinematicBody2D

var speed = 50

func _process(delta):
	global_position.y += speed*delta	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		queue_free()
