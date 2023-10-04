extends Label


func _process(delta):
	visible_ratio = lerp(1, 0, get_node("Timer").time_left / get_node("Timer").wait_time)
