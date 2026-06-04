extends Node2D
var money = 0
func _ready() -> void:
	%basic_spanwer.points_up.connect(points)
	%"300$ button".pressed.connect(mid_plant_spawn)
	
func points():
	money += 1
	print(money)


func _on_button_pressed() -> void:
	if money > 44:
		%spanwer.basic_plant_wall()
		money -= 45



#func _physics_process(delta: float) -> void:
	

func mid_plant_spawn():
	print("hi")
