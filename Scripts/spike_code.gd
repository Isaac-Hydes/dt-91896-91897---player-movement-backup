extends Area2D

signal spike_touched

func _on_body_entered_spike(body: Node2D) -> void:
	spike_touched.emit()
	if body.name == 'player':
		body.velocity.y = -350
		body.lives -= 1
