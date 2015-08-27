#
# First part of the challenge to test that 1 + 1 does indeed equal 2
# 
if (1 + 1 == 2) then
	puts "1 and 1 does indeed equal 2"
end

#
# Here we test whether the predetermine variable my_name is equal to Skillcrush and display a message accordingly
#
my_name = "Dan"
if my_name == "Skillcrush"
	puts "Hellooooo, #{my_name}!"
else
	puts "Oops, I though your name was Skillcrush. Sorry about that, #{my_name}"
end

#
# Get the user to enter their favourite colour and then tidy it up a bit.  Next check if it's one of the colours that we
# know (or not) and display a message accordingly 
#
puts "Please enter your favourite colour..."
fav_color = gets.to_s.strip.downcase
if (fav_color.empty?)
	puts "Didn't you mean to tell me your favourite colour?"
	fav_color = gets.to_s.strip.downcase
end	
if (fav_color == "red") then
	puts "Red like fire!"
elsif (fav_color == "orange") then
	puts "Orange like, well... an orange."
elsif (fav_color == "yellow") then
	puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color == "green") then
	puts "Have you been to the Emerald City in Oz?"
elsif (fav_color == "blue") then
	puts "Blue like the sky!"
elsif (fav_color == "purple") then
	puts "Purple plums are the tasiest."
else
	puts "Hmm, well I don't know what that color is!"
end