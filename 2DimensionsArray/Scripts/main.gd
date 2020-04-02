extends Node2D

onready var screenSize = get_viewport().size
const tile = 64
var item = preload("res://PackedScenes/item.tscn")
var col; var row
var walls = []

func _ready():
	col = int(get_viewport().size.x / tile)
	row = int(get_viewport().size.y / tile)
	randomize()
	spawnItem()
	
func spawnItem():
	var random_type = [16, 26, 39, 59]
	var X = []
	var Y = []
	for i in range(16) : X.append(i)
	for i in range(10) : Y.append(i)
	X.shuffle()
	Y.shuffle()
	for i in 10:
		random_type.shuffle()
		var inst = item.instance()
		inst.initialize(Vector2(X[i]*tile+32, 
								Y[i]*tile-32), 
								random_type[0]
								)
		self.add_child(inst)
		
func hit_item(my_signal01, my_signal02):
	print("Je suis " + str(my_signal01))
	print("Score : " + str(my_signal02))
