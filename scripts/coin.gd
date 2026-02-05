extends Area2D
@onready var game_manager: GameManager = %GameManager
@onready var coin_sound: AudioStreamPlayer2D = $CoinSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_points()
	animation_player.play("pickup")
	queue_free()
