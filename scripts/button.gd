extends Node3D
@export var target : Node3D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
var button_state : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_area_3d_area_entered(area: Area3D) -> void:
	if not animation_player.is_playing():
		if button_state:
			button_state = false
			animation_player.play("toggle-off")
		else:
			button_state = true
			animation_player.play("toggle-on")
		
		if target and target.has_method("receive_input"):
			target.receive_input(button_state)