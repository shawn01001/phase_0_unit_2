# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement


def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"

assert { name == "bettysue" } 
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin 
Defined method 'assert'
	Raise string error unless yield: Meaning if assert is called and var 'name' != 'bettysue'.
Var 'name' = 'bettysue'
assert { name == "bettysue" }: This assert call returns true, as name = bettysue. 
assert { name == "billybob" }: This assert call returns raised error, as name != billybob. 
=end

# 3. Copy your selected challenge here
# Week_5: 6_validate_credit_card.rb

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

# ORIGINAL TEST CODE
test_a = CreditCard.new(4408041234567893)
test_a.check_card == true

test_b = CreditCard.new(4408041234567892)
test_b.check_card == false


# 4. Convert your driver test code from that challenge into Assert Statements
def assert
	raise "Assertion failed!" unless yield
end

test_a = CreditCard.new(4408041234567893)
test_b = CreditCard.new(4408041234567892)

assert {test_a.check_card == true}
assert {test_b.check_card == false}


# 5. Reflection
=begin
This challenge was quick, as the directions were pretty straightforward.  
I only converted my original test code (one test), 
but I can see how this testing method will be far more useful 
once we start building complex assert methods that test multiple components.
=end
