extends Node2D
var money = 10
func _physics_process(delta: float) -> void:
	money += money * 2
	print(money)
	
