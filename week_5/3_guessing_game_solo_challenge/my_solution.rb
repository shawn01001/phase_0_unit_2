# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:
=begin
	add array of guesses
	
=end

# 3. Initial Solution

class GuessingGame
  	def initialize(answer)
  	@answer = answer
    	unless answer >= 0 
    		raise ArgumentError.new("Please choose a positive integer.")
    	end
    end
  
  	def guess(guess)
  	@guess = guess
		if @guess > @answer 
			return :high
		elsif @guess < @answer
			return :low
		elsif @guess == @answer
			return :correct
		else
			return "error"
		end
	end

  	def solved?
	  	unless @guess == @answer 
	  		return false
	  	end
		if @guess == @answer 
			return true
		end
	end
end






# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
