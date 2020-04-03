extends RigidBody2D


var safe = 0
var sick = 1
var heal = 2
var dead = 3

var health = safe

func _ready():
	randomize()
	var randx = rand_range(-100,100)
	var randy = rand_range(-100,100)
	apply_impulse(Vector2(),Vector2(randx,randy))

func ifInfected():
	$texture.texture = load("res://people/manRed_stand.png")
	changeHealth(sick)
	$hingbaMatam.autostart = 1
	$hingbaMatam.start()
	$sibaMatam.start()
	
	
func changeHealth(num):
	health = num
	

func _on_bPeople_body_entered(body):
	if body.get_name() in "bPeople":
		if body.health == safe and self.health == sick:
			body.ifInfected()
			body.health = sick
			get_tree().call_group("UI_Manage","countSick")



func _on_hingbaMatam_timeout():
	changeHealth(heal)
	$texture.texture = load("res://people/soldier1_stand.png")
	get_tree().call_group("UI_Manage","countCured")

	


func _on_sibaMatam_timeout():
	var random = randf()
	if not health == heal:
		if random < 0.0036:
			get_tree().call_group("UI_Manage","countDeath")
			$texture.texture = load("res://people/hitman1_stand.png")
			$hingbaMatam.stop()
			$sibaMatam.stop()
			
	
	
	
	
	
	
	
