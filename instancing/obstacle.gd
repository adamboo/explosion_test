extends RigidBody2D



var explosion_force

func _ready():

	pass

func _physics_process(delta):
	
	pass


func _on_Area2D_area_entered(area):
	var ball_position = area.global_position
	var explosion_range = 100
	var full_force = 500
	var distance_to_ball =  global_position - ball_position
	explosion_force = distance_to_ball / explosion_range * full_force
	linear_velocity += explosion_force
	print("ball position " + str(ball_position))
	print("obs position " + str(global_position))
	print("distance to ball " + str(distance_to_ball))
	print("explosive force " + str(explosion_force))
	
	pass # Replace with function body.


func _on_Area2D_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.


func _on_Timer_timeout():
#	linear_velocity += Vector2(100,100)
	pass # Replace with function body.
