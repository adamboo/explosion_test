extends RigidBody2D



var explosion_force

func _ready():

	pass

func _physics_process(delta):
	
	pass


func remap(value, InputA, InputB, OutputA, OutputB):
	
	return(value - InputA) / (InputB - InputA) * (OutputB - OutputA) + OutputA


func _on_Area2D_area_entered(area):
	var ball_position = area.global_position
	var dist_to_ball := global_position.distance_to(area.global_position)
	var explosion_range := 200
	dist_to_ball = clamp(dist_to_ball, 0, explosion_range)
	var full_force := 500
	var force = remap(dist_to_ball, 0, explosion_range, full_force, 0)
	var dir_to_ball := global_position.direction_to(area.global_position)
	explosion_force = dir_to_ball * force * -1
	linear_velocity += explosion_force
	print("ball position " + str(ball_position))
	print("obs position " + str(global_position))
	print("explosive force " + str(explosion_force))
	
	pass # Replace with function body.


func _on_Area2D_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.


func _on_Timer_timeout():
#	linear_velocity += Vector2(100,100)
	pass # Replace with function body.
