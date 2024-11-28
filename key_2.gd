extends Node3D

signal key_collected

func _on_area_body_entered(body):
	if body.name == "Player":
		body.add_to_inventory("key_2")
		print("Ключ key_2 добавлен в инвентарь.")
		key_collected.emit()
		queue_free() # Удаляем ключ из сцены
