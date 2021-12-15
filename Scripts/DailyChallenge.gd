extends Node

class_name DailyChallenge

export(String, FILE) var input_path
export(String) var label_text = 'Day ' setget set_label
signal send_answer(answer_text)

onready var part1 = $vertical/buttons/Part1 as Button
onready var part2 = $vertical/buttons/Part2 as Button

func set_label(text: String):
	if Engine.editor_hint:
		if label_text != text:
			label_text = text
			$Label.text = text


func get_raw_input() -> String:
	var file: = File.new()
	file.open(input_path, File.READ)
	var content = file.get_as_text()
	file.close()

	return content


func get_input_data() -> Array:
	var raw_data = get_raw_input()

	var input = []
	for item in raw_data.split('\n'):
		input.append(item)

	return input


func _ready():
	if !Engine.editor_hint:
		$Label.text = label_text
		part1.connect("pressed", self, "_on_Part1_pressed")
		part2.connect("pressed", self, "_on_Part2_pressed")

func send_answer(answer):
	emit_signal("send_answer", answer)
	print(answer)


func _on_Part1_pressed():
	send_answer('_on_Part1_pressed not implemented')


func _on_Part2_pressed():
	send_answer('_on_Part2_pressed not implemented')
