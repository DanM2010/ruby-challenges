class WeatherForecast

	def self.get_user_location
		weather_forecast = WeatherForecast::new
		puts "Tell me where you are and I'll let you know the weather?"
		@location = gets.strip
	end
	
	def self.get_weather_now
		client = Weatherman::Client.new
		response = client.lookup_by_location(@location)
		puts "In #{response.location['city']} it is currently #{response.condition['temp']}#{response.units['temperature']} and #{response.condition['text']}"
	end

	attr_accessor :location, :client, :response
end

require 'yahoo_weatherman'

WeatherForecast.get_user_location
WeatherForecast.get_weather_now

