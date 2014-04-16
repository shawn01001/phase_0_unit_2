# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Create class 'Die' 
Define method 'initialize' with one argument (sides)
  Create instanced var '@sides' equal to 'sides'
  Raise new error unless 'sides' is > 1
Define method 'sides'
  return numerical value of 'sides'
Define method 'roll'
  return random value from range of 'sides'

=end
# 3. Initial Solution
=begin
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
=end

# 4. Refactored Solution
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

# 1. DRIVER TESTS GO BELOW THIS LINE

d = Die.new(10)
d.sides == 10
d.roll >= 1
d.roll <= 10


# 5. Reflection 
=begin
There wasn't anything difficult about this challenge, 
but I'm excited to use the class structure in depth. 
=end