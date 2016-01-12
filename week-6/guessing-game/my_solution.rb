# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: creating a new instance, passing an integer for an argument, then calling methods passing an integer
# Output: symbols explaining high or low, and booleans if the game is solved
# Steps:
# - save the integer passed(answer) into an instance variable
# - in solved? method, return true only if :correct has been printed
# - have guess method accept one argument, an integer. if the argument is less or more than the answer, print less or more. if the argument is correct, print correct. all this method outputs is symbols.

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @check = false
#   end

#   def solved?
#     p @check
#   end

#   def guess(num_guess)
#     if num_guess > @answer
#       @check = false
#       p :high
#     elsif num_guess < @answer
#       @check = false
#       p :low
#     else num_guess == @answer
#       @check = true
#       p :correct
#     end
#   end
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    raise ArgumentError.new("Only integers are allowed") if answer.is_a? String
    raise ArgumentError.new("You must enter an integer greater than 1") if answer < 2
    @answer = answer
    @check = false
  end

  def solved?
    p @check
  end

  def guess(num_guess)
    if num_guess > @answer
      @check = false
      p :high
    elsif num_guess < @answer
      @check = false
      p :low
    else num_guess == @answer
      @check = true
      p :correct
    end
  end

end



# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object? - the actions follow a logical progression at its simplest. all class objects have attributes and methods so they can do specific things and each object is sort of defined by what it is capable of doing.
# When should you use instance variables? What do they do for you? - i used instance variables to access the same data in different areas of the class. In this exercise I used check and answer as instance variables because they both had to be in other methods. I chose to place check initially in the initialize method and then have it placed in the other two methods. I would be interested to see if someone else chose to not put check in the initialize method and why.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? - Flow control is like guided the user's input through a series of paths. depending on what they input, different things happen in the program, in this case I used if/else statements. It went pretty smoothly for me.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols? - symbols are sort of like strings and sort of like integers. they share a lot of methods with strings, and if you have :symbol[0], a string will be returned. like integers, there is only one object of each symbol, which ultimately makes it easier and faster for those objects to be accessed. symbols are good to use especially as hash keys were I found out you can even use this syntax {hat: "off"} and it works.