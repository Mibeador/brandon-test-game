extends Area2D
@onready var game_manager: GameManager = %GameManager


func _on_body_entered(body: Node2D) -> void:
	queue_free()
