extends Node2D

var jo = 0
func _ready() -> void:
	$CharacterBody2D.more_wall_plz.connect(adding_more_wall)
	#adding_more_wall()
	
	
	
func adding_more_wall():

	$block_wall_spawner.mid_plant_wall()
	
	jo += 1
	print(jo)
	
