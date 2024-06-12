extends Spatial

var counter: float

func _ready():
	pass
	
func _physics_process(delta):
	counter+= delta
	if int(counter)== 20:
		get_tree().change_scene("res://WinTela1.tscn")

func _on_gerac_timeout():
	$gerac.start()
	var novoscanos = preload("res://Canos.tscn").instance()
	novoscanos.translation.y = rand_range(0, 4)
	novoscanos.translation.z = -33
	add_child(novoscanos)

func _reset_game():
	# Conecte o sinal de pressionamento da tecla R à função de reset
	InputMap.action_connect("reset_game", self, "_on_ResetGame")
	get_tree().change_scene("res://Menu.tscn")

func _on_ResetGame(action_name, pressed):
	if pressed: 
		if action_name == "fechar":
			_reset_game()
			
