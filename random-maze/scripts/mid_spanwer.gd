extends Node2D
var spot = 0
var moves_the_player_up = 100
var moves_the_player_up_checker = 0
var em = preload("res://scenes/mid_plant.tscn")
var spawn_location = 70
signal points_up


func _ready() -> void:
	mid_plant_wall()

func mid_plant_wall():
	for n in 60:
		
		spot += 100
		var bt = em.instantiate()
		bt.position = Vector2(spot+20,moves_the_player_up)
		add_child(bt)
		bt.add_point.connect(hi)
		
		if spot > 999:
			spot = 0
			moves_the_player_up += 70
		moves_the_player_up_checker += 1
		if moves_the_player_up_checker == 60:
			moves_the_player_up = 100
			moves_the_player_up_checker = 0


#func _on_button_pressed() -> void:
	#wall()
func hi():
	points_up.emit()


func _on_timer_timeout() -> void:
	mid_plant_wall()
