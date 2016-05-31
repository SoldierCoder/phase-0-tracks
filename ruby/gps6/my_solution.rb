# Virus Predictor

# I worked on this challenge [by myself, with:  Shawn Tuttle ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# We use require_relative to specify a file near-by for inclusion. We can use an optional file path.
# Require is more about using built-in libraries.
require_relative 'state_data'

class VirusPredictor

  attr :normalized_population_density, true
  attr :state, :population, :population_density

  # initializing instances of the VirrusPredictor    
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @normalized_population_density =  @population_density > 200 ? 200 : @population_density
  end
  # virus_effects calls predicted_deaths and calls speed_of_spread
  
  #############################
  # putting private up here would effectively cut us off from the predicted_deaths 
  # and speed_of_spread methods.  Private helps to demarcate, or, set boundries for the 
  # interface to our class.  By making prediced_deaths and speed_of_spread private we are 
  # saying that these methods are out of bounds to the public, and should be called only 
  # internally.

  def virus_effects
    
    predicted_deaths
    speed_of_spread
  end

  private

  # based on population_density it create a SWAG about predicted deaths and prints it.
  def predicted_deaths
    # predicted deaths is solely based on population density

    magic_numbers = [0.05, 0.1, 0.2, 0.3, 0.4]
    casualty_rate = magic_numbers[(@normalized_population_density / 50)]
    number_of_deaths = (@population * casualty_rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"


  end
  # estimates the speed of spread, based on population_density and prints
  # it is worth noting the return value will be nil
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    magic_numbers = [2.5, 2.0, 1.5, 1.0, 0.5]
    speed = magic_numbers[(@normalized_population_density / 50)]

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each  do |state, pop_and_density| 
  state_predictor = VirusPredictor.new(state, pop_and_density[:population_density], pop_and_density[:population])
  state_predictor.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data 
# file?
# One uses the hash "rocket" (=>) to seperate keys and values, as opposed to using the 
# colon (:).
# What does require_relative do? This command loads features (or in this case, data, by
# searching relative to the directory in which the file from which it is called resides. 
# How is it different from require?  Require does not know about the current working 
# directory
# What are some ways to iterate through a hash?
# obviously, hashes can iterate with a variety of blocks (#each, #select, #reject)
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# It kind of blew my mind that there could be a program that did nothing to its whole 
# data set.
# What concept did you most solidify in this challenge? the need for testing.






