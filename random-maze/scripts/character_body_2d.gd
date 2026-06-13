extends CharacterBody2D
signal more_wall_plz
var speed = 500
var where_the_wall_at = 500

func _physics_process(delta: float) -> void:

	position.y -= 10
	var dir := Input.get_vector("ui_left","ui_right","ui_left","ui_down")
	
	
	move_and_slide()
	if position.y < where_the_wall_at:
		where_the_wall_at -= 500
		more_wall_plz.emit()
		#print("what_the_fuck")
		#print(where_the_wall_at)
