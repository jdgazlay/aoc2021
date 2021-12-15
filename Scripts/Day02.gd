tool
extends DailyChallenge


func _on_Part1_pressed():
	var input_data: = get_input_data()
	var depth = 0
	var distance = 0

	for instruction in input_data:
		var direction = instruction.split(' ')

		if direction[0] == 'forward':
			distance += int(direction[1])
		elif direction[0] == 'up':
			depth -= int(direction[1])
		elif direction[0] == 'down':
			depth += int(direction[1])

	send_answer(str(depth * distance))


func _on_Part2_pressed():
	var input_data: = get_input_data()
	var depth = 0
	var aim = 0
	var distance = 0

	for instruction in input_data:
		var direction = instruction.split(' ')

		if direction[0] == 'forward':
			distance += int(direction[1])
			depth += int(direction[1]) * aim
		elif direction[0] == 'up':
			aim -= int(direction[1])
		elif direction[0] == 'down':
			aim += int(direction[1])

	send_answer(str(depth * distance))	
