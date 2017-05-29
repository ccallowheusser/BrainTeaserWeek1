@arr = []

# gets input as an array of strings--does no error checking
def get_input(arr)
	puts "What are the numbers in our array, separated by commas."
	str = gets.chomp
	arr = str.split(",")
	# len = arr.length - 1
	
	# for i in 0..len
	# 	if arr[i].to_i
	# 	else
	# 		puts "That is not a valid input string"
	# 		arr = []
	# 	end
	# end
	# arr
end

# finds the minimum value in the array
def min_array(arr)
	min = arr[0].to_i
	len = arr.length - 1
	for i in 1..len
		newint = arr[i].to_i
		if min > newint
			min = newint
		end
	end
	min
end

# finds the maximum value in the array
def max_array(arr)
	max = arr[0].to_i
	len = arr.length - 1
	for i in 1..len
		newint = arr[i].to_i
		if max < newint
			max = newint
		end
	end
	max
end

def brain_teaser(arr)
	cont = true
	while cont
		arr = get_input(arr)
		if arr = []
			arr = get_input(arr)
		end
		puts "Would you like me to tell you the (h)ighest or (l)owest value? Enter h, l, or quit"
		ans = gets.chomp
		case ans.downcase
		when 'h'
			num = max_array(arr)
			puts "The maximum number is #{num}"
		when 'l'
			num = min_array(arr)
			puts "The minimum number is #{num}"
		when 'quit'
			exit
		else
			puts "Invalid input"
		end
	end
end

brain_teaser(@arr)
		