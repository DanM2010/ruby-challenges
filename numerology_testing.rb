puts "Please enter your date of birth in MMDDYYYY format..."
date_of_birth = gets.strip
# for debugging: puts "#{date_of_birth[0]}, #{date_of_birth[1]}, #{date_of_birth[2]}, #{date_of_birth[3]}, #{date_of_birth[4]}, #{date_of_birth[5]}, #{date_of_birth[6]}, #{date_of_birth[7]}"
birth_path_number = date_of_birth[0].to_i + date_of_birth[1].to_i + date_of_birth[2].to_i + date_of_birth[3].to_i + date_of_birth[4].to_i + date_of_birth[5].to_i + date_of_birth[6].to_i + date_of_birth[7].to_i
#birth_path_number = nil
#i = nil
#(0..date_of_birth.length.to_i).each do |i|
#	puts "#{date_of_birth[i]}"
#	birth_path_number =+ date_of_birth[i].to_i
#	puts "#{birth_path_number}"
#end
# puts birth_path_number.to_s
class CalcBirthPart
	def initialize(temp_birth_path_number)
		@temp_birth_path_number=temp_birth_path_number
	end
puts "your initial birth path number is: #{birth_path_number}"
birth_path_number_str = birth_path_number.to_s
while birth_path_number > 9
	number_of_digits = birth_path_number.to_s.length.to_i
	puts "birth path number in the while loop is: #{birth_path_number}"
# for debugging:	puts "for this loop initially there are still #{number_of_digits} digits in the number"
#	i = nil
	(0..number_of_digits).each do |i|
		puts "i is now equal #{i.to_s}"
		puts "birth path number in the for loop is: #{birth_path_number}"
		puts "birth_path_number [i] is: #{birth_path_number_str[i]}"
		new_var = @temp_birth_path_number + birth_path_number_str[i].to_i
		puts "new_var: #{new_var}"
		@temp_birth_path_number =+ birth_path_number_str[i].to_i
		puts "temp is now: #{@temp_birth_path_number}"
		puts "#{@temp_birth_path_number.class}"
		puts "temp: #{@temp_birth_path_number}"
	end
	birth_path_number = @temp_birth_path_number
	puts "Birth path number is now: #{birth_path_number}"
# for debugging:	puts "after this loop there are now #{number_of_digits.to_s.length} digits in the number" 
end
puts "This is your birth part number #{birth_path_number}"
end
#puts number_of_digits
	#puts number_of_digits.class
#	for number_of_digits
#		birth_path_number = 
#case birth_path_number
#when > 9


class CalcBirthPart
	def initialize(date_of_birth, birth_part_number, birth_path_number_str, tmp_birth_path_number)
		@date_of_birth=date_of_birth
		@birth_part_number=birth_part_number
		@birth_path_number_str=birth_path_number_str
		@temp_birth_path_number=temp_birth_path_number
	end
	puts "Please enter your date of birth in MMDDYYYY format..."
 	@date_of_birth = gets.strip
    @birth_path_number = @date_of_birth[0].to_i + @date_of_birth[1].to_i + @date_of_birth[2].to_i + @date_of_birth[3].to_i + @date_of_birth[4].to_i + @date_of_birth[5].to_i + @date_of_birth[6].to_i + @date_of_birth[7].to_i
#   (0..@date_of_birth.length.to_i).each do |i|
#		@birth_path_number =+ @date_of_birth[i].to_i
#	end
	puts "your initial birth path number is: #{@birth_path_number}"
	@birth_path_number_str = @birth_path_number.to_s
	while @birth_path_number > 9
		number_of_digits = @birth_path_number.to_s.length.to_i
		puts "birth path number in the while loop is: #{@birth_path_number}" # for debugging
		(0..number_of_digits).each do |i|
			puts "i is now equal #{i.to_s}"
			puts "birth path number in the for loop is: #{@birth_path_number}"
			puts "birth_path_number [i] is: #{@birth_path_number_str[i]}"
			new_var = @temp_birth_path_number.to_i + @birth_path_number_str[i].to_i
			puts "new_var: #{new_var}"
			@temp_birth_path_number =+ @birth_path_number_str[i].to_i
			puts "temp is now: #{@temp_birth_path_number}"
			puts "#{@temp_birth_path_number.class}"
			puts "temp: #{@temp_birth_path_number}"
		end
		@birth_path_number = @temp_birth_path_number
		puts "Birth path number is now: #{@birth_path_number}"
	end
	puts "This is your birth part number #{@birth_path_number}"
end