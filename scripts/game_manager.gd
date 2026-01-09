extends Node


var score = 0
var max_points = 0

@onready var coins: Node = $"../Coins"
@onready var score_label: Label = $ScoreLabel

const score_label_format_string = "You collected %d / %d coins"


func _ready() -> void:
	max_points = coins.get_child_count()
	

func add_point():
	score += 1
	var score_label_text = score_label_format_string % [score, max_points]
	score_label.text = score_label_text
	print(score_label_text)
