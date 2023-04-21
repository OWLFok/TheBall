extends CanvasLayer

var x
var y

onready var R_but = $Right
onready var L_but = $Left
onready var J_but = $Jump
onready var Res_but = $Reset

func _ready():
	x = int(OS.get_real_window_size().x/100)
	y = int(OS.get_real_window_size().y/100)
	
	R_but.global_position = Vector2(83*x,70*y)
	L_but.global_position = Vector2(7*x,70*y)
	J_but.global_position = Vector2(82*x,37*y)
	Res_but.global_position = Vector2(5*x,5*y)
	
	R_but.scale = Vector2(0.1*x*0.5,0.1*x*0.5)
	L_but.scale = Vector2(0.1*x*0.5,0.1*x*0.5)
	J_but.scale = Vector2(0.1*x*0.5,0.1*x*0.5)
	Res_but.scale = Vector2(0.1*x*0.5,0.1*x*0.5)
	
	pass
