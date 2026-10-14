extends Area2D


func _on_body_entered_life_mushroom(body: Node2D) -> void:
	if body.name == 'player':
		if body.lives < 3:
			body.lives += 1
			self.queue_free()
		if body.lives == 3:
			return
