def always_three(number)
	(((((number + 5) * 2) - 4) / 2) - number)
end

puts "Please enter a number..."
users_number = gets.to_i
puts "The number is " + always_three(users_number).to_s + " (as always!)"