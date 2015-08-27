class Pet
 
	attr_accessor :species, :name, :owner

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
my_ferret.species = "Ferret" #Refactor: capture the species for this beast
my_ferret.name = "Fredo"
ferret_name = my_ferret.name
 
my_parrot = Pet.new #Refactor: change class name to new Pet class
my_parrot.species = "Parrot" #Refactor: capture the species for this beast
my_parrot.name= "Budgie"
parrot_name = my_parrot.name
 
my_chincilla = Pet.new #Refactor: change class name to new Pet class
my_chincilla.species = "Chincilla" #Refactor: capture the species for this beast
my_chincilla.name= "Dali"
chincilla_name = my_chincilla.name

#Refactor: changed to use new pet_says method to return what each pet is going to say 
puts "#{ferret_name} says #{my_ferret.pet_says}, 
#{parrot_name} says #{my_parrot.pet_says}, 
and #{chincilla_name} says #{my_chincilla.pet_says}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect