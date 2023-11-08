extends Control


func _on_Button_pressed():
	GlobalScore.score = 0
	get_tree().change_scene("res://Level.tscn")
