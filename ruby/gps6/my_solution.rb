# Virus Predictor

# I worked on this challenge [by myself, with:  Shawn Tuttle ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# We use require_relative to specify a file near-by for inclusion. We can use an optional file path.
# Require is more about using built-in libraries.
require_relative 'state_data'

class VirusPredictor
  attr :normalized_population_density, true
  # initializing instances of the VirrusPredictor    
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @normalized_population_density =  @population_density > 200 ? 200 : @population_density
  end
  # virus_effects calls predicted_deaths and calls speed_of_spread
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

    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

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