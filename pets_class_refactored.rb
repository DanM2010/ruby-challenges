class Pet #Refactor: change class name from Ferret to Pet to cover multiple species
 
# Refactor: add new getter and setter methods for pet species 
	def set_species=(species)
		@species = species
	end
	
	def get_species
		return @species
	end
	
	def set_name=(pet_name) #Refactor: change ferret_name to pet_name to cover multiple species
		@name = pet_name
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
 
	def pet_says #Refactor: change the method name from squeal to pet_says to cover multiple species
#Refactor: add if statement to produce a noise depending on it's species
		if @species == "Ferret"
			return "squeeeeee"
		elsif @species == "Chincilla"
			return "eeeep"
		elsif @species == "Parrot"
			return "Pieces o' eight"
		else
			return "I've got nothing to say!"
		end
	end
 
end
 
my_ferret = Pet.new #Refactor: change class name to new Pet class
my_ferret.set_species = "Ferret" #Refactor: capture the species for this beast
my_ferret.set_name = "Fredo"
ferret_name = my_ferret.get_name
 
my_parrot = Pet.new #Refactor: change class name to new Pet class
my_parrot.set_species = "Parrot" #Refactor: capture the species for this beast
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name
 
my_chincilla = Pet.new #Refactor: change class name to new Pet class
my_chincilla.set_species = "Chincilla" #Refactor: capture the species for this beast
my_chincilla.set_name= "Dali"
chincilla_name = my_chincilla.get_name

#Refactor: changed to use new pet_says method to return what each pet is going to say 
puts "#{ferret_name} says #{my_ferret.pet_says}, 
#{parrot_name} says #{my_parrot.pet_says}, 
and #{chincilla_name} says #{my_chincilla.pet_says}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect