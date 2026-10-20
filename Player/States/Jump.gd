class_name PlayerStateJump extends PlayerState
func _init() -> void:
	
	pass




func enter() -> void: 
	#play aimation
	pass


func exit () -> void:
	print("exit:",name)
	pass



func handled_input (_event : InputEvent) -> PlayerState:
	#handle input
	return next_state



func process(_delta: float) -> PlayerState:
	if player.direction.x !=0:
		return run

	return next_state


func physics_process(_delta: float) -> PlayerState:
	player.velocity.x= 0
	return next_state
