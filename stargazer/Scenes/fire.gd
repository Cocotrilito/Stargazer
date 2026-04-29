extends Area2D
signal fireON

var near_player = false

func _ready():
	$Label2.visible = false


func _on_body_entered(body):
	if body.name == "Player":
		near_player = true
		$Label2.visible = true

func _on_body_exited(body):
	if body.name == "Player":
		near_player = false
		$Label2.visible = false
func _process(delta):
	if near_player and Input.is_action_just_pressed("ui_accept"):
		emit_signal("fireON")
