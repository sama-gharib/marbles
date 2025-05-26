extends StaticBody2D

var crossed = false

func _process(delta: float) -> void:
	if !crossed:
		var collision = move_and_collide(Vector2.ZERO, true)
		
		if collision != null and 'color' in collision.get_collider():
			self.crossed = true
			var winner = collision.get_collider().color
			$Polygon2D.color = winner
			$Confettis.set_color(winner)
			$Confettis2.set_color(winner)
			$Confettis.emitting = true
			$Confettis2.emitting = true
