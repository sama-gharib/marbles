extends StaticBody2D

var Shapes = preload("res://scripts/shapes.gd")

@export var tooth_count = 4
@export var rotation_speed = 0.5

func _ready() -> void:
	var wheel = Shapes.cogwheel(1.0, 1.2, tooth_count, 64)
	$Polygon2D.polygon = wheel
	$CollisionPolygon2D.polygon = wheel

func _physics_process(delta: float) -> void:
	self.rotate(rotation_speed * delta)
