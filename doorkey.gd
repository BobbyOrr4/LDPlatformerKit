extends Node3D

@onready var animation_player = $AnimationPlayer
@onready var door_blocker_collision = $DoorBlocker/CollisionShape3D  # Узел с коллизией

@export var closed = true

var entered = false
var opened = false  

func _process(delta):
	if !closed and !opened: 
		animation_player.play("Open")
		door_blocker_collision.set_deferred("disabled", true)  # Отключение коллизии
		opened = true  

func _on_area_3d_body_entered(body: Node3D) -> void:
	if "Player" in body.name and !opened: 
		entered = true
		if body.hasKey:
			body.hasKey = false
			closed = false 

func _on_area_3d_body_exited(body: Node3D) -> void:
	if "Player" in body.name:
		entered = false
