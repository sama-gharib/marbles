extends Node2D

var obstacles = []

@export var obstacle_count = 5

func _ready() -> void:
	self.load_obstacles()
	self.build_random()
	$LeftBarrier.scale.y  *= self.obstacle_count + 2.0
	$RightBarrier.scale.y *= self.obstacle_count + 2.0
	$Ground.position.y = (self.obstacle_count + 2.0) * 1152.0

func build_random():
	for i in range(self.obstacle_count):
		var new_obstacle = self.obstacles.pick_random().instantiate()
		new_obstacle.position.y = float(i+1) * 1152.0
		self.add_child(new_obstacle)

func load_obstacles():
	var dir = DirAccess.open("res://scenes/obstacles")
	dir.list_dir_begin()
	for file in dir.get_files():
		obstacles.append(load(dir.get_current_dir() + "/" + file))
