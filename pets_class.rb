class Ferret #Fix: Capitalised the class name 
	
	def set_name=(ferret_name) #Fix: removed spaces in the method definition
		@name = ferret_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chincilla
 
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end

# Fix: add missing method get_name for Chincilla class
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeek
		return "eeeep"
	end
 
end
 
class Parrot
 
	def set_name=(parrot_name)
		@name = parrot_name #Fix: change variable name to match passing argument, i.e. parrot_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end

# Fix: add missing tweet method for Parrot class
	def tweet
		return "Pieces o' eight"
	end
end
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name #Fix: add underscore to variable to follow variable naming convention
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name #Fix: add underscore to variable to follow variable naming convention
 
my_chincilla = Chincilla.new
my_chincilla.set_name= "Dali"
chincilla_name = my_chincilla.get_name #Fix: add underscore to variable to follow variable naming convention
 
puts "#{ferret_name} says #{my_ferret.squeal}, 
#{parrot_name} says #{my_parrot.tweet}, 
and #{chincilla_name} says #{my_chincilla.squeek}." #Fix: add underscores to variables to follow variable naming convention
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect