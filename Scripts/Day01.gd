tool
extends DailyChallenge

func get_increases(num_list: Array) -> int:
	var increases = 0

	for num_index in range(len(num_list)):
		if num_index == 0:
			continue
		if int(num_list[num_index]) > int(num_list[num_index - 1]):
			increases += 1
	return increases

func _on_Part1_pressed():
	var input_data: = get_input_data()
	print(get_increases(input_data))


func _on_Part2_pressed():
	var input_data: = get_input_data()
	
	var sums = []
	for num_index in range(len(input_data) - 2):
		sums.append(int(input_data[num_index]) + int(input_data[num_index + 1]) + int(input_data[num_index + 2]))
	print(get_increases(sums))
