extends Node2D
var moves_x = 0
var moves_y = 600
var moves_y_checker = 0
var em = preload("res://scenes/basic_block.tscn")
var spawn_location = 70
const rows = 10

signal points_up


func _ready() -> void:
	mid_plant_wall()
	#move_the_next_area()
	#pass
func move_the_next_area():
	position.y -= 600




func mid_plant_wall():
	for n in rows:
		
		moves_x += 100
		var bt = em.instantiate()
		bt.position = Vector2(moves_x+20,moves_y)
		add_child(bt)
		#bt.add_point.connect(hi)
		
		if moves_x > 999:
			moves_x = 0
			moves_y += 100
		moves_y_checker += 1
		if moves_y_checker == rows:
			moves_y = 100
			moves_y_checker = 0
			
func walls_on_walls():
	position.y -= 100


func _on_timer_timeout() -> void:
	walls_on_walls()
