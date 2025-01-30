class_name MyHurtBox
extends Area2D

func _init() -> void:
	collision_layer = 0
	collision_mask = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("area_entered", self._on_area_entered)


func _on_area_entered(hitbox: MyHitBox) -> void:
	if hitbox == null:
		return
	
	if owner.has_method("take_damage"):
		owner.take_damage(hitbox.damage)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
