# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Define method 'initialize' with single argument 'card_number' = to 16-digit credt card #
	return Argument_Error if 'card_number' length != 16	

Define method 'calcualte_number' 
	creates new array of card_number digits split into individual elements
	multiply every other number by 2
	split numbers with more than one intiger
	create new variable = to sum of all numbers in array
	
Define method 'check_card'
	new var sum % == 0
	return true or false
=end



# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
=begin
class CreditCard
    def initialize(card_number)
    	unless card_number.to_s.length == 16
    		raise ArgumentError.new("card_number must have exactly 16 digets")	
		end		
		@card_number = card_number.to_s.split("").collect {|i| i.to_i}
	end

	def check_card
		sum % 10 == 0
	end

	def calculate
		@card_number.each_with_index.map {|value, index|
			if index % 2 == 0
				value * 2
			else
				value
			end
		}
	end

	def sum
		@string_number = @card_number.to_s.split("").collect {|i| i.to_i}
		@string_number.inject{|sum, n| sum + n}
	end

end
=end


# 4. Refactored Solution

class CreditCard
    def initialize(card_number)
    	unless card_number.to_s.length == 16
    		raise ArgumentError.new("card_number must have exactly 16 digets")	
		end		
		@card_number = card_number.to_s.split("").map {|i| i.to_i}
	end

	def check_card
		sum % 10 == 0
	end

	private

	def double_even
		@card_number.each_with_index.map {|value, index|
			if index % 2 == 0
				value * 2
			else
				value
			end
		}
	end

	def sum
		@sum_num = double_even.to_s.split("").map {|i| i.to_i}
		@sum_num.inject{|sum, n| sum + n}
	end

end





# 1. DRIVER TESTS GO BELOW THIS LINE
test_a = CreditCard.new(4408041234567893)
test_a.check_card == true

test_b = CreditCard.new(4408041234567892)
test_b.check_card == false




# 5. Reflection 
=begin
The hardest part of this challenge for me was getting check_card to return 'true'.  
I realized my error had to do with the final sum still using the original number, and I needed to define a new variable for the 'sum' method.
The two things I learned while refractoring is that I can make a var equal to a method with modifications,
and consecutive enumerable methods lined together can reduce the complexity of my code, though it may be more difficult to read without notation.	

	
=end
