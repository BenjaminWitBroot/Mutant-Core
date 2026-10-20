class_name PlayerStateRun extends PlayerState



func _init() -> void:
	
	pass




func enter() -> void: 
	#play animation
	print("enter",name)
	pass


func exit () -> void:
	print("exit",name)
	pass



func handled_input (_event : InputEvent) -> PlayerState:
	#handle input
	return next_state



func process(_delta: float) -> PlayerState:
	if player.direction.x == 0:
		return idle
	return next_state


func physics_process(_delta: float) -> PlayerState:
	player.velocity.x= player.direction.x * player.move_speed
	return next_state
