class_name PlayerStateFall extends PlayerState
func _init() -> void:
	
	pass




func enter() -> void: 
	#play aimation
	print("enter",name)
	pass


func exit () -> void:
	print("exit:",name)
	pass



func handled_input ( _event : InputEvent) -> PlayerState:
	#handle input
	return next_state



func process(_delta: float) -> PlayerState:

	return next_state


func physics_process(_delta: float) -> PlayerState:
	if player. is_on_floor():
		return idle
	return next_state
