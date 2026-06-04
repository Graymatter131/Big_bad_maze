extends Area2D
var point = 0
var grown = false
signal add_point



func _on_timer_timeout() -> void:
	growing()

	
#func _physics_process(delta: float) -> void:


func growing():
	if point < 80:
		point += randi_range(0,5)
		#print(point)
		if point > 79:
			grown = true
			if grown == true:
				%ColorRect.visible = true

func _on_mouse_entered() -> void:
	if grown == true:
		queue_free()
		add_point.emit()
