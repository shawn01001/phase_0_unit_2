# U2.W5: Virus Predictor

# I worked on this challenge [with: Butler Bushyhead].

# The program is taking state data and calculating deaths, and spead of virus spread if an outbreak were to occur.
# 'state_data' simulates a database of US state data.  It's in the format of nested key value pairs.  
# The outer pair syntax using "=>" is the implicit form.  The inner syntax using ":" deontes each inner key as a symbol that can be accessed.
# 'require_relative' denotes the file 'state_data' is needed, as arguments used in the class below are found in that file.  'require' would be used if the needed file was in a different directory.
# 'virus_effects' calls private methods
# the default to view class methods is public.  'private' hides methods (they can't be called outside the class) and minimizes the interface a user is exposed to.  'virus_effects' can't be made private, as it's needed if the other methods are private.
# 'predicted_deaths' Estimates death-count based on population and population density
# 'speed_of_spread' Estimates speend of virus spread based on population_density

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  

  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) 
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

  
STATE_DATA.each_key { |i|
x = VirusPredictor.new(i, STATE_DATA[i][:population_density], STATE_DATA[i][:population], STATE_DATA[i][:region], STATE_DATA[i][:regional_spread])
x.virus_effects
}

# Reflection
=begin
It was great working on this with Butler, as I started my own method (creating a 2nd class) before pairing with him.
I knew his initial idea was a far more simple solution than mine, 
so we ended up exploring that, and in the end, his solution took less code and is much easier to read.
The hardest part of this challenge was correctly calling the nested hash data, 
as we kept getting errors or returning the index instead of the key or value.  
=end
