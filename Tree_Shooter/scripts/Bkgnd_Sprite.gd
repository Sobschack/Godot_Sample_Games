extends Node2D

var speed = 1
var limit = 50


func _process(delta):
		if Input.is_action_pressed("ui_right") and self.position.x > -limit :
			self.position.x -= speed
		elif Input.is_action_pressed("ui_left") and self.position.x < limit :
			self.position.x += speed
		var display_pos = self.position
		$Label.text = str(display_pos)

