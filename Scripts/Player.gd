extends KinematicBody2D

var JUMPFORCE = -875
var GRAVITY = 40
var HOR_SPEED = 250
var velocity = Vector2(0, 0)

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -HOR_SPEED
	if Input.is_action_pressed("right"):
		velocity.x = HOR_SPEED
	
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE
		
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.5)
func _process(delta):
	GlobalScore.score += int((550 - global_position.y)) / 200
	if global_position.y > 600:
		queue_free()
		get_tree().change_scene("res://GameOver.tscn")

