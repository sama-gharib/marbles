extends GPUParticles2D

func _ready() -> void:
	self.set_color(Color.WHITE)

func _process(delta: float) -> void:
	var next_color = self.texture.gradient.get_color(0)
	if self.emitting and next_color.a > 0.0:
		next_color.a -= delta/self.lifetime
		self.texture.gradient.set_color(0, next_color)

func set_color(color) -> void:
	var gradient = Gradient.new()
	gradient.remove_point(0)
	gradient.set_color(0, color)
	
	var texture = GradientTexture1D.new()
	texture.gradient = gradient
	texture.width = 3
	self.texture = texture
