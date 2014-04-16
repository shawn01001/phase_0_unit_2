# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Create new class 'Die'
  Define method 'initialize' with one argument (labels) representing string/mixed array
    Create instanced var = to 'labels'
    Raise argument error if labels.length < 1
  Define method 'sides'
    return number of sides from 'labels'
  Define method 'roll'
    return random side from 'labels'
=end
# 3. Initial Solution
=begin
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
=end


# 4. Refactored Solution
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

# 1. DRIVER TESTS GO BELOW THIS LINE
x = Die.new(["A", "B", "C", "D", 5])
x.sides == 5


# 5. Reflection 
=begin
This was a bit more difficult, as I wasn't sure if '.sample' would work correctly.
Also, I wasn't sure if mixed arrays would work, so I had to test that functionality.
  
=end
