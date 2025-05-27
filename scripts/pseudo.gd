extends Label


func _physics_process(delta: float) -> void:
	self.global_position = get_parent().global_position
	self.global_position -= Vector2(50.0, 35.0)
	self.rotation = -self.get_parent().rotation
