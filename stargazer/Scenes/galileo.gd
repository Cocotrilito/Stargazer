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
		if player_ref.has_telescope == false:
			$CanvasLayer/DialogBox/Label.text = "Im building something... pass that thing over there"
			$CanvasLayer/DialogBox.visible = true
			await get_tree().create_timer(3.0).timeout
			$CanvasLayer/DialogBox.visible = false
			
		else:
			$CanvasLayer/DialogBox/Label.text = "Thanks!.. look jupiter has moons!, we move, not the sun"
			$CanvasLayer/DialogBox.visible = true
			await get_tree().create_timer(3.0).timeout
			$CanvasLayer/DialogBox.visible = false 
			get_parent().fade_and_change()
			
	
