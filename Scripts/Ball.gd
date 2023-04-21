extends RigidBody2D
class_name Player

var jump = true

export var start: Vector2

func _physics_process(_delta):
	if Input.is_action_just_pressed("reset"):
		res()
	if Input.is_action_pressed("ui_right"):
		apply_impulse(Vector2(), Vector2(25,0))
	if Input.is_action_pressed("ui_left"):
		apply_impulse(Vector2(), Vector2(-25,0))
	if Input.is_action_just_pressed("ui_up") and jump:
		jump = false
		apply_impulse(Vector2(), Vector2(0,-1500))
		pass

func _on_JumpControl_body_entered(body):
	if body.name == "Jump":
		jump = true
	if body is Trap:
		res()
	pass

func res()->void:
	get_tree().reload_current_scene()
	pass
