# Virus Predictor

# I worked on this challenge [by myself, with:  Shawn Tuttle ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# We use require_relative to specify a file near-by for inclusion. We can use an optional file path.
# Require is more about using built-in libraries.
require_relative 'state_data'

class VirusPredictor
  attr :state, :population, :population_density
  # initializing instances of the VirrusPredictor    
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # virus_effects calls predicted_deaths and calls speed_of_spread
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private


  # based on population_density it create a SWAG about predicted deaths and prints it.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor               #population * popul
    elsif population_density >= 150                             #  
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
  # estimates the speed of spread, based on population_density and prints
  # it is worth noting the return value will be nil
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
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