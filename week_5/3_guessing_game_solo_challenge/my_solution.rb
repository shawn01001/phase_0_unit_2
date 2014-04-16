# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Create class GuessingGame
Define method 'initialize' with one argument (answer) equal to a positive numerical value
	Create instanced var = to 'answer'
	raise 'ArgumentError' if answer is 0 or negative
Define method 'guess' with one argument 
	Raise 'ArgumentError' if 'guess' is 0 or negative
	Create instanced var = to 'guess'
	Build 'if' statement returning ':high, :low, or :correct' based on the relationship between 'answer' and 'guess'
Define method 'solved?'
	Build 'if' statement returning: 
	false if the last 'guess' != 'answer'; 
	false if no 'guess' has been called;
	true if the last 'guess' == 'answer'
=end

# 3. Initial Solution
=begin
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
=end

# 4. Refactored Solution
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

# 1. DRIVER TESTS GO BELOW THIS LINE
x = GuessingGame.new(10)
x.solved? == false
x.guess(5) == :low
x.solved? == false
x.guess(15) == :high
x.guess(10) == :correct
x.solved? == true

# 5. Reflection 
=begin
The main challenge for me was getting 'solved?' to return 'true'.
I know my strategy of having an 'unless' loop followed by an 'if' statement can be refactored, 
and I need to go back and spend some time working on this to simplify that method.
I also wanted to add an 'ArgumentError' for the 'guess' argument, 
but I was receiving errors if I included it and ran out of time to solve the issue.
=end