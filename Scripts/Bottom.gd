extends KinematicBody2D


func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		pass
	else:
		queue_free()
