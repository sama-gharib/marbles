extends GPUParticles2D

func set_color(color) -> void:
	var gradient = Gradient.new()
	gradient.remove_point(0)
	gradient.set_color(0, color)
	
	var texture = GradientTexture1D.new()
	texture.gradient = gradient
	texture.width = 3
	self.texture = texture
