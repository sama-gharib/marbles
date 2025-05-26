extends Node2D

@export var marble_count = 2
@export var title        = "Choose your marble !"
@export var gravity      = 980.0

var marble = preload("res://scenes/marble.tscn")

func _ready() -> void:
	
	$Title.text = title
	
	for i in range(self.marble_count):
		var new_marble = marble.instantiate()
		new_marble.position = Vector2(
			randf_range(
				$SpawnArea.position.x - $SpawnArea.scale.x / 2.0,
				$SpawnArea.position.x + $SpawnArea.scale.x / 2.0
			),
			randf_range(
				$SpawnArea.position.y - $SpawnArea.scale.y / 2.0,
				$SpawnArea.position.y + $SpawnArea.scale.y / 2.0
			),
		)
		new_marble.color = Color(randf(), randf(), randf())
		$Players.add_child(new_marble)
	
	self.set_gravity(0.0)

func start_race() -> void:
	self.set_gravity(980.0)
	$MarbleCamera.activated = true
	
func set_gravity(g: float) -> void:
	for player in $Players.get_children():
		player.gravity_scale = g
	
