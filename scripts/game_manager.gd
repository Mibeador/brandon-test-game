extends Node
class_name GameManager

var score : int = 0

func add_points() -> void:
	score += 1
	print(score)
	
