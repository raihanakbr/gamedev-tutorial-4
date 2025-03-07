extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var direction: float = 1

@onready var animSprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	animSprite.play("default")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func flip() -> void:
	direction *= -1
	animSprite.flip_h = !animSprite.flip_h
