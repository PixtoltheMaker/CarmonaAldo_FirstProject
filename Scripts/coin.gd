extends Area2D



func _on_body_entered(body: Node2D) -> void:
	var player:PlayerBody2D
	player = body as PlayerBody2D
	player.coins += 1
	print(player.coins)
	queue_free()
	
