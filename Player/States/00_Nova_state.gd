@icon("res://Player/States/state.svg")
class_name PlayerState extends Node

var player: Nova
var next_state : PlayerState

#region /// stare references
@onready var idle: PlayerStateIdle = %Idle
@onready var run: PlayerStateRun = %Run
@onready var jump: PlayerStateJump = %Jump


#endregion


func _init() -> void:
	
	pass




func enter() -> void: 
	pass


func exit () -> void:
	print("exit:",name)
	pass



func handled_input (_event : InputEvent) -> PlayerState:
	return next_state



func process(_delta: float) -> PlayerState:
	return next_state


func physics_process(_delta: float) -> PlayerState:
	return next_state
