extends KinematicBody2D

var speed = 5

func _ready():
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x -= speed
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.x += speed
	if Input.is_key_pressed(KEY_UP):
		self.position.y -= speed
	if Input.is_key_pressed(KEY_DOWN):
		self.position.y += speed
	pass
