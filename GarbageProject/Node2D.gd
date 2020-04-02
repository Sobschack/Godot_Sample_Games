extends Node2D

const tile = 64
var my_dict = {}

func _ready():
	randomize()
	createArray()
	display()
#	print(my_dict)

	
func createArray():
	var row = []
	for i in range(10):
		row = []
		for j in range(16):
			var rand = rand_range(0,100)
			if rand <= 25:
				row.append(1)
			else:
				row.append(0)
		my_dict[i] = row
	return my_dict
	
func display():
#	print(my_dict)
	for keys in my_dict.values():
		for values in keys:
			if values == 1:
				print("Yes")
			else:
				print("No")
				
