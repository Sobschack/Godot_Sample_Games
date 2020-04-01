extends Node2D

onready var screenSize = get_viewport().size
const goldNumber = 64
var item = preload("res://PackedScenes/item.tscn")

func _ready():
	print(screenSize)
	randomize()
	spawnItem()
	
func spawnItem():
	var random_type = [16, 26, 39, 59]
	var X = []
	var Y = []
	for i in 5:
		random_type.shuffle()
		var inst = item.instance()
		inst.initialize(Vector2(randi()%17*goldNumber, randi()%11*goldNumber), random_type[0])
		self.add_child(inst)

func hit_item(my_signal01, my_signal02):
	print("Je suis " + str(my_signal01))
	print("Score : " + str(my_signal02))

