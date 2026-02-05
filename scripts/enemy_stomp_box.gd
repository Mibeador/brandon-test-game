extends Area2D

@onready var game_manager: GameManager = $"../../GameManager"
@onready var killzone: Area2D = $"../Killzone"


func _on_body_entered(body: Node2D) -> void:
	print("Enemy stomped")
	game_manager.add_points()


func _on_killzone_body_entered(body: Node2D) -> void:
	queue_free()
