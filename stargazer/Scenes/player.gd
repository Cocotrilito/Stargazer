extends CharacterBody2D

const speed = 200.0
const JUMP_VELOCITY = -400

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += 980 * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	
	move_and_slide()
