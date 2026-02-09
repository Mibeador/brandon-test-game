extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	timer.start()
	Engine.time_scale = 0.1


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()


func _on_stomp_box_body_entered(body: Node2D) -> void:
	queue_free()
