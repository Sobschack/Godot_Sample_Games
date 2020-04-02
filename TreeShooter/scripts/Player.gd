extends KinematicBody2D

var speed = 600

func _process(delta):
	var vel = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	move_and_slide(vel).normalized()
	pass
