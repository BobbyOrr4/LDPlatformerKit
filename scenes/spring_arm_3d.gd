extends SpringArm3D

func _ready():
	spring_length = 10.0  # Установить длину рычага
	collision_mask = 1  # Проверять столкновения с объектами на 1-м слое
