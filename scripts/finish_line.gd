extends StaticBody2D

var end_screen = preload("res://scenes/last_screen/win_screen.tscn")

var crossed = []

func _process(delta: float) -> void:
	if crossed.size() < 3:
		var collision = move_and_collide(Vector2.ZERO, true)
		
		if collision != null and 'get_pseudo' in collision.get_collider() and collision.get_collider() not in self.crossed:
			var winner = collision.get_collider()
			self.crossed.append(winner)
			if self.crossed.size() == 1:
				$Confettis.set_color(winner.color)
				$Confettis2.set_color(winner.color)
				$Confettis.emitting = true
				$Confettis2.emitting = true
		
			if crossed.size() == 3:	
				var new_end_screen = end_screen.instantiate()
				new_end_screen.set_winners(crossed[0].get_pseudo(), crossed[1].get_pseudo(), crossed[2].get_pseudo())
				new_end_screen.position.y = -652
				self.add_sibling(new_end_screen)
