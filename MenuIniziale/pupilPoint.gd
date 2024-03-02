extends Node2D

var max_dist = 30

func _process(delta):
	var mouse_pos = get_local_mouse_position()
	var dir = Vector2.ZERO.direction_to(mouse_pos)
	var dist = mouse_pos.length()
	get_node("pupil").position = dir * min(dist, max_dist)

# func _on_timer_timeout():
