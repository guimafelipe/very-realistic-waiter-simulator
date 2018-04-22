extends Node

var current_time = 0
var difficulty = 0
var difficulty_map #= [20.0, 50.0, 80.0]

func _ready():
	difficulty_map = GlobalData.difficulty_map
	pass

func _process(delta):
	current_time += delta
	var new_diff = 0
	for i in range(difficulty_map.size()):
		if(current_time >= difficulty_map[i]):
			new_diff = i
#	assert(difficulty <= 3)
	difficulty = new_diff