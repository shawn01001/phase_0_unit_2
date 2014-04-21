# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
Define class "PezDispenser"
Define method 'initialize' with argument: array (flavors)
Define method 'count_pez' 
	returns number of pez in dispenser
Define method 'remove_pez'
	deletes pez in array with index = 0
	puts "You ate one #{flavor} pez"
	raise argument if flavors = []
Define method 'add_pez' with one argument (flavor)
	adds pez to dispenser 
	raise argument if array.count >= 12
Define method 'pez_flavors'
	returns flavors in order	
=end

# 3. Initial Solution

class PezDispenser
	def initialize(flavors)
		unless flavors.is_a?(Array)
			raise ArgumentError.new("Please initialize with a delicious array of pez flavors.")
		end
		@flavors = flavors
	end

	def count_pez
		if @flavors.count > 0
			puts "There are #{@flavors.count} pez in this dispenser"
		else
			puts "The Pez dispenser is empty."
		end
	end

	def remove_pez
		puts "You removed and ate one #{@flavors.shift} pez.  Yum!"
	end

	def add_pez(flavor)
		unless flavors.is_a?(String)
			raise ArgumentError.new("Your added flavor must be in string form.")
		end
		@flavors << flavor
		puts "You added #{flavor} to the Pez dispenser." 
	end

	def pez_flavors
		@flavors
	end
end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
#Pseudocode for test class
=begin
Create class 'PezTests'
Create assert method to return error if @flavors is empty when remove_pez is called
Create assert method to return error if @flavors is full when add_pez is called (most pez dispensers hold 12 pez)
=end

class PezTests < Test::Unit::TestCase
	

	flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
	super_mario = PezDispenser.new(flavors)


puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 