extends Area2D
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var timer: Timer = $Timer



func _on_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
