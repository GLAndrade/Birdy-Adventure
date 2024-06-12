extends RigidBody

var counter: float

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("fly"):
		$hittingwings.play()
		linear_velocity.y = 300*delta
	if Input. is_action_pressed("fechar"):
		get_tree().change_scene("res://Menu.tscn")
	
			
