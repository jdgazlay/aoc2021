tool
extends DailyChallenge


func _on_Part1_pressed():
	var input_data = get_input_data()
	var sum_list = [0, 0, 0, 0, 0]
	var gamma_list = [0, 0, 0, 0, 0]
	var epsilon_list = [0, 0, 0, 0, 0]
	var gamma = 0
	var epsilon = 0
	
	# get total
	for input in input_data:
		for index in range(len(input)):
			sum_list[index] += int(input[index])
	
	
	
	# build gamma / epsilon binaries
	for bit in range(len(sum_list)):
		if int(sum_list[bit]) > len(input_data) / 2.0:
			gamma_list[bit] = 1
			epsilon_list[bit] = 0
		else:
			gamma_list[bit] = 0
			epsilon_list[bit] = 1
		
	send_answer(gamma_list)
		
# 000001110001
	
	
	"""
	00100
	11110
	10110
	10111
	10101
	01111
	00111
	11100
	10000
	11001
	00010
	01010
	75875
	10110
	01001
	"""



# func _on_Part2_pressed():
# 	pass	
