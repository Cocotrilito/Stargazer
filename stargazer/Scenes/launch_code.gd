extends Area2D

var near_player = false
var player_ref = null

func _ready():
	$Label.visible = false



func _on_body_entered(body):
	if body.name == "Player":
		near_player = true
		player_ref = body
		$Label.visible = true


func _on_body_exited(body):
	if body.name == "Player":
		near_player = false
		player_ref = body
		$Label.visible = false

func _process(delta):
	if near_player and Input.is_action_just_pressed("ui_accept"):
		player_ref.has_launchCode = true
		visible = false
