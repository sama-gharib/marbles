extends Camera2D

var activated = false

func _process(delta: float) -> void:
	if activated:
		var lowest = 0
		for marble in get_parent().find_child("Players").get_children():
			if marble.position.y > lowest:
				lowest = marble.position.y
		
		self.position.y = lerp(self.position.y, lowest - 200.0, 0.08)
