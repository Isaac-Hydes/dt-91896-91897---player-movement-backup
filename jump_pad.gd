extends Area2D




func _on_body_entered_jump(body: Node2D) -> void:
	if body.name == 'player':
		if body.velocity.y >= 200:
			body.velocity.y = -600
			body.jump_count = 2
