extends Control


func set_winners(first: String, second: String, third: String):
	$Control/HBoxContainer/Control2/First.set_subtitle(first)
	$Control/HBoxContainer/Control2/First.set_title("First")
	$Control/HBoxContainer/Control/Second.set_subtitle(second)
	$Control/HBoxContainer/Control/Second.set_title("Second")
	$Control/HBoxContainer/Control3/Third.set_subtitle(third)
	$Control/HBoxContainer/Control3/Third.set_title("Third")
