extends Sprite
export var NextLevel: String


func _on_Portal_body_entered(body):
	if body is Player:
		return get_tree().change_scene(NextLevel)
	pass
