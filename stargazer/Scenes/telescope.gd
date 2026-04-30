extends Area2D


var near_player = false
var player_ref = null


func _ready():
	$Label.visible = false
	


func _on_body_entered(body):
	if body.name == "Player":
		player_ref = body
		near_player = true
		$Label.visible = true

func _on_body_exited(body):
	if body.name == "Player":
		near_player = false
		$Label.visible = false
		
func _process(delta):
	if near_player and Input.is_action_just_pressed("ui_accept"):
		player_ref.has_telescope = true
		visible = false
