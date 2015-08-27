def add_two_numbers(num1, num2)
	puts "Now you have " + (num1 + num2).to_s + "!"
end

puts "You wanna add two numbers? OK, tell me the first number:"
num1 = gets.to_i
puts "Now tell me the second number:"
num2 = gets.to_i

add_two_numbers(num1, num2)
