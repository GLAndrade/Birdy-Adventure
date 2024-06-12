extends Spatial

var counter: float

func _ready():
	pass
	
func _physics_process(delta):
	counter+= delta
	if int(counter)== 60:
		get_tree().change_scene("res://FimTela.tscn")

func _reset_game():
	# Conecte o sinal de pressionamento da tecla R à função de reset
	InputMap.action_connect("reset_game", self, "_on_ResetGame")
	get_tree().change_scene("res://Menu.tscn")

func _on_ResetGame(action_name, pressed):
	if pressed: 
		if action_name == "fechar":
			_reset_game()
			
func _on_gerac2_timeout():
	$gerac2.start()
	var novoscanos = preload("res://Canos3.tscn").instance()
	novoscanos.translation.y = rand_range(0, 4)
	novoscanos.translation.z = -22
	add_child(novoscanos)
