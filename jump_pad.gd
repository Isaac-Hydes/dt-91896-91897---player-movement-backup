extends Area2D

@onready var jump_allow: CollisionShape2D = $"../StaticBody2D/CollisionShape2D"


func _on_body_entered_jump(body: Node2D) -> void:
	if body.name == 'player':
		if body.velocity.y > 250:
			jump_allow.set_deferred("disabled", true)
			body.velocity.y = -600
			body.jump_count = 2
		else:
			jump_allow.set_deferred("disabled", false)
		
