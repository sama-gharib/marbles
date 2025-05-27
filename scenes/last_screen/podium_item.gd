extends SubViewportContainer

func set_title(t: String) -> void:
	$Title.text = t

func set_subtitle(t: String) -> void:
	$Control/Subtitle.text = t
