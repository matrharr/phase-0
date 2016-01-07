# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# Input: calling a new instance of a class and calling methods on that instance
# Output: a new instance of a class and methods that return integers
# Steps:
# -define initialize class to raise an argument error if the number of sides is less than 1.
# -set instance variable to the argument entered at calling of new instance
# -set .sides method to return the number of sides
# -set .roll method to return a random number between 1 and the number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Only multi-sided die are allowed")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(sides) + 1
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Only multi-sided die are allowed")
    end
    if sides%1 != 0
      raise ArgumentError.new("Only whole numbers are allowed")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(sides) + 1
  end
end






# 4. Reflection
# What is an ArgumentError and why would you use one?
# - an argument error is a type of error that is triggered by certain criteria typed as the method's argument. you would use one when someone has entered an argument that doesn't work as you would want. in this case, negative numbers and floats wouldn't make sense on a die, so they raise an argument error.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# - I used rand here with pretty much total ease, and I had never written an argument error or used raise before but it was pretty straightforward.
# What is a Ruby class?
# - a ruby class is a framework that all objects that belong to that class obey. certain classes have certain methods that are inherited by the objects that live in that class. classes can also be subclasses of "broader" classes, so a hierarchy of objects and classes can be created.
# Why would you use a Ruby class?
# - you would use a class so that you could create objects and their own methods. using classes you could basically create any type of object with any type of features you wanted.
# What is the difference between a local variable and an instance variable?
# - a local variable can only be accessed by the method that contains it, a, instance variable can be accessed throughout the class.
# Where can an instance variable be used?
# - it can be used throughout the whole class. in this case, @sides is called inside of the method sides, and @sides calls back to the sides argument that is given and initialized.