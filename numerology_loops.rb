class CalcBirthPart
	def initialize(dob, bpn, tmp_str)
		@date_of_birth=dob
		@birth_path_number=bpn
		@tmp_str=tmp_str
	end
	puts "Please enter your date of birth in MMDDYYYY format..."
 	@date_of_birth = gets.strip
	@birth_path_number = 0
    (0..@date_of_birth.length.to_i-1).each do |i|
		@birth_path_number += @date_of_birth[i].to_i
	end
	while @birth_path_number > 9
		number_of_digits = @birth_path_number.to_s.length.to_i
		@tmp_str = @birth_path_number.to_s
		@birth_path_number = 0
		(0..number_of_digits-1).each do |i|
			@birth_path_number += @tmp_str[i].to_i
		end
	end
	puts "Your birth path number is: #{@birth_path_number}. This means..."
	case @birth_path_number
	when 1
		puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		puts "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		puts "Something strange has happened"
	end
end