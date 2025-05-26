
static func circle(radius: float, vertex_count: int) -> PackedVector2Array:
	var result = []
	
	for i in range(vertex_count):
		var angle = float(i)/float(vertex_count) * 2.0 * PI
		result.append(Vector2(cos(angle), sin(angle)) * radius)
	
	return result

static func cogwheel(radius: float, tooth_factor: float, tooth_count: int, vertex_count: int) -> PackedVector2Array:
	var result = []
	var radians_per_tooth = 2.0 * PI / float(tooth_count*2)
	
	for i in range(vertex_count):
		var angle = float(i)/float(vertex_count) * 2.0 * PI
		var dist = radius
		
		if int(angle/radians_per_tooth)%2 == 0:
			dist = radius * tooth_factor
		
		result.append(Vector2(cos(angle), sin(angle)) * dist)
	
	return result
