class Match

	puts "Hello!"

	def set_date=(date)
		@date = date
	end
	
	def get_date
		return @date
	end

	def set_final_score=(final_score)
		@final_score = final_score
	end
	
	def get_final_score
		return @final_score
	end

	def set_home_team=(home_team)
		@home_team = home_team
	end
	
	def get_home_team
		return @home_team
	end
	
	def set_away_team=(away_team)
		@away_team = away_team
	end
	
	def get_away_team
		return @away_team
	end
	
end
	
class Goal < Match

	def set_scorer=(scorer_name)
		@name = scorer_name
	end
	
	def get_scorer
		return @name
	end
	
	def set_scored_for=(scored_for_team)
		@for_team = scored_for_team
	end
	
	def get_scored_for
		return @for_team
	end
	
	def set_assisted_by=(assisted_by)
		@assist = assisted_by
	end
	
	def get_assisted_by
		return @assist
	end

	def set_time_of_goal=(time_of_goal)
		@time = time_of_goal
	end
	
	def get_time_of_goal
		return @time
	end
	
	def set_current_score=(current_score)
		@current_score = current_score
	end
	
	def get_current_score
		return @current_score
	end

end

great_goal = Goal.new
great_goal.set_scorer = "Troy Deeney"
great_goal.set_home_team = "Watford"
great_goal.set_away_team = "Leicester City"
great_goal.set_scored_for = "Watford"
great_goal.set_assisted_by = "Jonathan Hogg"
great_goal.set_time_of_goal = "96:52"
great_goal.set_current_score = "Wat 3-1 Lei"
great_goal.set_final_score = "Wat 3-1 Lei"
scorer = great_goal.get_scorer
goal_for = great_goal.get_scored_for
current_score = great_goal.get_current_score
final_score = great_goal.get_final_score

puts "#{scorer} scores for #{goal_for} to make it #{current_score}!!"
puts "The whistle has gone and the final score is #{final_score}"