extends Node

var sick = preload("res://people/sick.tscn")
var bpeople = preload("res://people/bPeople.tscn")

func _ready():
	var sickPeople = sick.instance()
	sickPeople.get_child(0).ifInfected()
	var rand_x_sick = rand_range(80,100)
	var rand_y_sick = rand_range(80,580)
	sickPeople.translate(Vector2(rand_x_sick,rand_y_sick))
	self.add_child(sickPeople)
	for i in range(0,199):
		var healthyPeople = bpeople.instance()
		var rand_x = rand_range(80,800)
		var rand_y = rand_range(80,580)
		healthyPeople.translate(Vector2(rand_x,rand_y))
		self.add_child(healthyPeople)
		 
		
	
	