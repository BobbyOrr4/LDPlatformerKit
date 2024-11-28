extends Area3D
@onready var sprite_3d: Sprite3D = $Sprite3D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var grabbed := false

func _on_body_entered(body: Node3D) -> void:
	print("enter")
	grabbed = true
	body.hasKey = true
	sprite_3d.visible = false
	sprite_3d.queue_free()
