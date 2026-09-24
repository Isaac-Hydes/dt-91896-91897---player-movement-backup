extends Area2D

@onready var speed_boost_timer = $speed_boost_timer
@onready var sprite = $Sprite2D
@onready var collision_shape = $CollisionShape2D

func _on_body_entered_speed_mushroom(body: Node2D) -> void:
	if body.name == 'player':
		sprite.hide()
		collision_shape.set_deferred('disabled', true)
		speed_boost_timer.start()
		body.speed = body.speed * 5 / 3
		await speed_boost_timer.timeout
		body.speed = body.speed * 3 / 5
		self.queue_free()
