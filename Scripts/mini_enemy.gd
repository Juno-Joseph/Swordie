extends CharacterBody2D

@onready var animation_player = $AnimationPlayer

var health : int = 30
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	animation_player.play("idle")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	move_and_slide()

func take_damage(amount: int) -> void:
	animation_player.play("hit")
	var total : int = 0
	total = amount + total
	print("Total ", total)
	print("Damage: ", amount)
	
