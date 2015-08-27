# Get the user to tell us the weather
puts "Please tell me the weather in one word..."
current_weather = gets.to_s.strip.downcase
# Check whether the user has told us something we can understand and if not give them another chance (with some options)
if (!(current_weather == "sunny" || current_weather == "bright" || current_weather == "clear" || current_weather == "cloudy" || current_weather == "windy" || current_weather == "raining" || current_weather == "rainy" || current_weather == "foggy" || current_weather == "snowy")) then
	puts "Please can you tell me if it's 'sunny', 'windy', 'rainy', 'foggy' or 'snowy'..."
	current_weather = gets.to_s.strip.downcase
end
# Give the user some advice based on what they've told us the weather is like
case current_weather
when "sunny", "bright", "clear"
	puts "Brilliant...crack out the t-shirt and shorts!!"
when "cloudy", "windy"
	puts "Best get a jumper on quick!"
when "raining", "rainy"
	puts "Remember to take an umbrella or you'll get soaked!"
when "foggy"
	puts "Where something bright!"
when "snowy"
	puts "Hat, coat and gloves!"
else
	puts "Sorry I can't give you any advice for when it's #{current_weather}"
end
	