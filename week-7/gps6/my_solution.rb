


# Virus Predictor

# I worked on this challenge Akeem.
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
#Relative refers to the file path, best use of require relative is when referring to local files that are related to project.
#
# PSEUDOCODE
# INPUT: state name
# OUTPUT: a statement of num of deaths and speed of spread
# STEPS:
# Creating a new method
#   print out data for all 50 states
#   loop through the hash
#   give us the results of the two main methods for all states
#   print out neatly
require_relative 'state_data'

class VirusPredictor

  # args => instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def all_data
    STATE_DATA.each do |key, value|
      @state_name = key
      value.each do |pop_metrics, st_num|
        if pop_metrics == :population
         @population = value[pop_metrics]
        else
         @population_density = value[pop_metrics]
        end
      end
    virus_effects
    end
  end


  # calls main methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # calcs deaths for state, prints string
  # change to case statement
  def predicted_deaths
    # predicted deaths is solely based on population density

    case @population_density
      when 200..1000000 then number_of_deaths = (@population * 0.4).floor
      when 150..199 then number_of_deaths = (@population * 0.3).floor
      when 100..149 then number_of_deaths = (@population * 0.2).floor
      when 50..99 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #calcs speed and puts string
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when 200..1000000 then speed += 0.5
      when 150..199 then speed += 1
      when 100..149 then speed += 1.5
      when 50 ..99 then speed += 2
      else speed += 2
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file? - one uses the rocket/arrow version, the other uses symbols to point to values
# What does require_relative do? How is it different from require? require relative uses the relative path and require uses the absolute path to link files
# What are some ways to iterate through a hash? - you can use a method like each, and incorporate brackets when necessary
# When refactoring virus_effects, what stood out to you about the variables, if anything? - just that you had to enter all of the arguments when inside those methods they just referred to instance variables so you could just do away with all the parameters
# What concept did you most solidify in this challenge? - use case rather than elsifs when you are just comparing one variable repeatedly.


