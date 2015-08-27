puts "Please enter a number..."
users_number = gets.to_i
users_orginal_number = users_number
users_number += 5
users_number *= 2
users_number -= 4
users_number /= 2
users_number -= users_orginal_number
puts "The number is #{users_number.to_s} (as always!)"


