extends Node2D

onready var answer_label = $CenterContainer/VBoxContainer/CenterContainer/HBoxContainer/Answer as Label
onready var first_five = $"CenterContainer/VBoxContainer/First 5" as HBoxContainer
onready var second_five = $"CenterContainer/VBoxContainer/Second 5" as HBoxContainer
onready var third_five = $"CenterContainer/VBoxContainer/Third 5" as HBoxContainer

func _ready() -> void:
	for child in first_five.get_children():
		child.connect("send_answer", self, "set_answer")

func set_answer(answer_text: String):
	answer_label.text = answer_text
