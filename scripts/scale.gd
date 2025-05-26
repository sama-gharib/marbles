extends RigidBody2D

@export var true_scale = Vector2(620.0, 20.0)

func _ready() -> void:
	$CollisionShape2D.scale = self.true_scale
	$Polygon2D.scale = self.true_scale
