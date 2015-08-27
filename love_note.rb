def love_note
	us = 1 + 1
	alone = 1
	love_o_meter = 0
	too_much = 49
	while (us >= alone && love_o_meter <= too_much)
		love_o_meter += 1
		if (love_o_meter == 1)
			puts "I love you! #{love_o_meter} time Xx"
		elsif
			puts "I love you! #{love_o_meter} times Xx"
		end
	end
	puts "All good things (loops) come to an end"
end

love_note