tool
extends Area2D

signal hit(value01, value02)

enum type_item {APPLE = 16, GEM = 26, SWORD = 39, KEY = 59}
export(type_item) var item_type
var my_name
var score

func _ready():
	self.connect("hit", get_parent(), "hit_item")
	
func initialize(pos, familly):
	self.position = pos
	item_type = familly
	match item_type:
		type_item.APPLE :
			$Sprite.frame = 16
			my_name = "une Pomme yeahh !!!"
			score = 10
		type_item.GEM :
			$Sprite.frame = 26
			my_name = "une Gemme yeahh !!!"
			score = 20
		type_item.SWORD :
			$Sprite.frame = 39
			my_name = "une Epée yeahh !!!"
			score = 10
		type_item.KEY :
			$Sprite.frame = 59
			my_name = "une Clef yeahh !!!"
			score = 10

func _process(delta):
	pass

func _on_Area2D_body_entered(body):
	self.emit_signal("hit", my_name, score)
	queue_free()
