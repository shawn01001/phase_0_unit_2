# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
    if labels.length < 1
    	raise ArgumentError.new("List cannot be empty.")
    end
  end

  def sides
    return @labels.length
  end
  
  def roll
    return @labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
