class_name PlayerStatejump extends PlayerState

@export var jump_velocity : float = 450




func _init() -> void:
	
	pass




func enter() -> void:
	#play aimation
	print("enter",name)
	player.velocity.y = -jump_velocity
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
	if player. is_on_floor():
		return idle
	elif player.velocity.y >= 0:
		return fall
	return next_state
