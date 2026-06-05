extends Area2D
@onready var game_master: GameManager = %"Game Master"
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	audio_stream_player_2d.play()
	game_master.add_points(1)
	collision_shape_2d.set_deferred("disabled", true)
	animated_sprite_2d.visible = false
	timer.start()
	


func _on_timer_timeout() -> void:
	queue_free()
