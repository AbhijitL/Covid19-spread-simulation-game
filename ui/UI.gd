extends Node2D


func _ready():
	get_parent().get_node("gen").get_children()

func countDeath():
	$Panel/GridContainer/deathNum.text = str(int($Panel/GridContainer/deathNum.text) + 1)
	$Panel/GridContainer/sickNum.text = str(int($Panel/GridContainer/sickNum.text) - 1)
	
func countCured():
	$Panel/GridContainer/curedNum.text = str(int($Panel/GridContainer/curedNum.text) + 1)
	$Panel/GridContainer/sickNum.text = str(int($Panel/GridContainer/sickNum.text) - 1)
	
func countSick():
	$Panel/GridContainer/sickNum.text = str(int($Panel/GridContainer/sickNum.text) + 1)
	$Panel/GridContainer/normalNum.text = str(int($Panel/GridContainer/normalNum.text) - 1)