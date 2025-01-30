class_name MyHitBox
extends Area2D

var damage : int = 10

func _init() -> void:
	collision_layer = 2
	collision_mask = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
