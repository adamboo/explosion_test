extends RigidBody2D

onready var _main = get_node("/root/Main")

func _ready():
	pass


func _on_Area2D_area_entered(area):
	var _death_particle = load("res://death_particle.tscn").instance()
	_death_particle.position = global_position
	_main.add_child(_death_particle)
	queue_free()
	pass # Replace with function body.
