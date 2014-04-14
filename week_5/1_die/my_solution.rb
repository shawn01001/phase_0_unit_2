# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides > 1
    	raise ArgumentError.new("There needs to be more than 1 side.")
    end
  end
  
  def sides
    return @sides 
  end
  
  def roll
    rand(1..@sides)
  end
end

#d = Die.new(10)


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 