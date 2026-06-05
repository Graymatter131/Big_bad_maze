extends Node2D
var money = 1000000
var ship_parts_price = 1000
func _ready() -> void:
	%basic_spanwer.points_up.connect(points)
	%mid_spanwer.points_up.connect(mid_points)
	%space_ship_part.pressed.connect(building_ship)
	%"300$ button".pressed.connect(mid_plant_spawn)
	$"45$".pressed.connect(basic_plant_spwan_button)
func _physics_process(delta: float) -> void:
	%Label.text = str(money)
func points():
	money += 1
	print(money)
func mid_points():
	money += 15
	

func basic_plant_spwan_button():
	if money > 44:
		%basic_spanwer.basic_plant_wall()
		money -= 45

func mid_plant_spawn():
	if money > 299:
		$mid_spanwer.mid_plant_wall()
		money -= 300
func building_ship():
	
	if money > ship_parts_price -1:
		
		money -= ship_parts_price
		ship_parts_price += ship_parts_price * 2
		print(ship_parts_price)
