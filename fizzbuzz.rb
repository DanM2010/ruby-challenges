def fizzbuzz(number)
	if (number % 3 == 0) && (number % 5 == 0)
		output = "fizzbuzz"
	elsif (number % 3 == 0)
		output = "fizz"
	elsif (number % 5 == 0)
		output = "buzz"
	elsif
		output = number.to_s
	end
	return output
end

no = 0
while no < 50
	no += 1
	puts fizzbuzz(no)
end