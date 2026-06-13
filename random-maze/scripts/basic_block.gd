extends Area2D
var hits = 0

func _on_area_entered(area: Area2D) -> void:
	block_breaking()
	
func block_breaking():
	hits += 1
	if hits == 3:
		#print("jover")
		pass
