extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -300.0
var jumping: bool

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta 
		if Input.is_action_pressed("Crouch"):
			velocity += get_gravity() * delta * 2.5

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():			
		velocity.y = JUMP_VELOCITY
		jumping = true
	
	if Input.is_action_pressed("Jump") and velocity.y < 0 and jumping:
		velocity.y += 1.95 * JUMP_VELOCITY * delta
	else:
		jumping = false

	move_and_slide()
