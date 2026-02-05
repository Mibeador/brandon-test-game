extends Node2D

@onready var stomp_box: Area2D = $StompBox
@onready var killzone: Area2D = $Killzone

var SPEED : int = 50

var direction : int = -1
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	position.x += direction * SPEED * delta

func _on_stomp_box_body_entered(body: Node2D) -> void:
	SPEED=0
	queue_free()
