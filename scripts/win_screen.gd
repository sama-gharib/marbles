extends Control


func set_winners(first: String, second: String, third: String):
	$Control/HBoxContainer/Control2/First.set_title(first)
	$Control/HBoxContainer/Control/Second.set_title(second)
	$Control/HBoxContainer/Control3/Third.set_title(third)
