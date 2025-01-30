extends CharacterBody2D

@onready var animation_player = $AnimationPlayer

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func take_damage(amount: int) -> void:
	animation_player.play("hit")
	print("Damage: ", amount)
