extends Label

var done = false
signal time_up

func _process(delta: float) -> void:
	if !self.done:
		var next = str(int($Timer.time_left))
		if self.text != next:
			self.text = next
			self.restore_opacity()
		else:
			self.decrease_opacity(delta)

func restore_opacity():
	self.label_settings.font_color.a    = 1.0
	self.label_settings.outline_color.a = 1.0

func decrease_opacity(x):
	self.label_settings.font_color.a    -= x
	self.label_settings.outline_color.a -= x

func _on_timer_timeout() -> void:
	self.text = "Go !"
	self.done = true
	self.restore_opacity()
	$VanishTimer.start()
	emit_signal("time_up")

func _on_vanish_timer_timeout() -> void:
	self.decrease_opacity(1.0)
