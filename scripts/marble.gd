extends RigidBody2D

@export var color = Color.WHITE
@export var radius = 10.0
@export var vertex_count = 32
@export var shape = preload("res://scripts/shapes.gd").circle(radius, vertex_count)

func _ready() -> void:
	$CollisionPolygon2D.polygon = self.shape
	$Polygon2D.polygon = self.shape
	$Polygon2D.color = self.color
