extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var direction: float = 1

@onready var animSprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var raycast: RayCast2D = $RayCast2D


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

	if raycast.is_colliding():
		var collider = raycast.get_collider()
		if collider.name == "Enemy":
			flip()


func flip() -> void:
	direction *= -1
	animSprite.flip_h = !animSprite.flip_h
