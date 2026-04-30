extends CharacterBody2D

const speed = 200.0
const JUMP_VELOCITY = -400

# galileo
var has_telescope = false
var has_launchCode = false

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += 980 * delta
		
	if Input.is_action_just_pressed("move_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction = 0
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("move_left"):
		direction = -1.0
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("move_right"):
		direction = 1.0
		
	velocity.x = direction * speed
	
	move_and_slide()
