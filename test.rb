def birth_path(birthday)

n_1 = birthday[0].to_i
n_2 = birthday[1].to_i
n_3 = birthday[2].to_i
n_4 = birthday[3].to_i
n_5 = birthday[4].to_i
n_6 = birthday[5].to_i
n_7 = birthday[6].to_i
n_8 = birthday[7].to_i
number = n_1 + n_2 + n_3 + n_4 + n_5 + n_6 + n_7 + n_8
# puts number (tests if the code up to this point works)
new_number = number.to_s
n_9 = new_number[0].to_i
n_10 = new_number[1].to_i
new_added_number = n_9 + n_10
# puts new_added_number (tests if the code up to this point works)
if new_added_number > 9 
	new_added_number.to_s
	n_11 = new_added_number[0].to_i
	n_12 = new_added_number[1].to_i
	new_added_number = n_11 + n_12
	return new_added_number.to_s
else
return new_added_number.to_s
end
end




def numerology_message(path_number)

	numerology_number = birth_path(path_number)
	if numerology_number.length == 1
		puts "Your numerology number is #{numerology_number}."

case (numerology_number) 
	when '1'
		puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when '2' 
		puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when '3' 
		puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when '4'
		puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when '5'
		puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when '6'
		puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when '7' 
		puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when '8'
		puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when '9'
		puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end 

end
end

puts "What is your birthday? Enter with format 'MMDDYYYY'. Do not include anything else."
bdate = gets.chop
final_message = numerology_message(bdate)
puts final_message