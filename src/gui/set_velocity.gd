extends LineEdit

onready var main = get_tree().get_root().get_node("Main")
onready var pendulum = main.get_node("CenterContainer/Pendulum")

# UPDATE V_0 INITIAL VELOCITY
func _on_Velocity_text_entered(new_text):
	var a = float(new_text)
	pendulum.phi_first = - a / pendulum.l
	
	main.saveConfig("V_0", a)
