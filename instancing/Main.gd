extends Node

export (PackedScene) var Ball
export (PackedScene) var Obstacle

func _input(event):
	if event.is_action_pressed("click"):
		var new_ball = Ball.instance()
		new_ball.position = get_viewport().get_mouse_position()
		$rigids.add_child(new_ball)
	if event.is_action_pressed("right_click"):
		var new_obstacle = Obstacle.instance()
		new_obstacle.position = get_viewport().get_mouse_position()
		$rigids.add_child(new_obstacle)


func _ready():
	print(str($position.global_position))


