extends StaticBody2D

var Shapes = preload("res://scripts/shapes.gd")

func _ready() -> void:
	$Polygon2D.polygon = Shapes.circle(1.0, 32)
