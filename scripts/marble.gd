extends RigidBody2D

@export var color = Color.WHITE
@export var radius = 10.0
@export var vertex_count = 32
@export var shape = preload("res://scripts/shapes.gd").circle(radius, vertex_count)

static var count = 0

func _ready() -> void:
	$CollisionPolygon2D.polygon = self.shape
	$Polygon2D.polygon = self.shape
	$Polygon2D.color = self.color
	$Pseudo.text = "bot" + str(count)
	count += 1

func _physics_process(delta: float) -> void:
	# Air friction
	self.linear_velocity = 0.99 * self.linear_velocity

func get_pseudo() -> String:
	return $Pseudo.text
