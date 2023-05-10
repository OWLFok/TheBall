extends Node2D

var x
var y

onready var Play_but = $Play
onready var License_but = $License
onready var Vk_but = $Vk
onready var Git_but = $Git

func _ready():
	x = int(OS.get_real_window_size().x/100)
	y = int(OS.get_real_window_size().y/100)
	
	Play_but.global_position = Vector2(40*x,10*y)
	License_but.global_position = Vector2(40*x,38*y)
	Vk_but.global_position = Vector2(35*x,68*y)
	Git_but.global_position = Vector2(55*x,68*y)
	
	Play_but.scale = Vector2(0.1*x*0.15,0.1*x*0.15)
	License_but.scale = Vector2(0.1*x*0.15,0.1*x*0.15)
	Vk_but.scale = Vector2(0.1*x*0.15,0.1*x*0.15)
	Git_but.scale = Vector2(0.1*x*0.15,0.1*x*0.15)
	pass

func _process(_delta):
	if Input.is_action_just_pressed("Play"):
		return get_tree().change_scene("res://Scenes/Level1.tscn")
	if Input.is_action_just_pressed("Vk"):
		return OS.shell_open("https://vk.com/owl_game")
	if Input.is_action_just_pressed("License"):
		return OS.shell_open("https://github.com/OWLFok/TheBall/blob/main/README.md")
	if Input.is_action_just_pressed("Git"):
		return OS.shell_open("https://github.com/OWLFok/TheBall")
	pass
