# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: creating a new object, passing in an array. then, calling methods on that object
# Output: a new object of a class. when methods are called, returning a randomly selected string
# Steps:
#-define initialize class to raise an argument error if an empty array is passed in.
# -set sides instance variable to the size of the array entered
# -set .sides method to return the number of sides
# -set .roll method to return a random element from the array


# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("You cannot enter an empty array") if labels.empty? == true
#     @sides = labels.size
#     @labels = labels
#   end

#   def sides
#     @sides
#   end

#   def roll
#     @labels[rand(@labels.size)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("You cannot enter an empty array") if labels.empty? == true
    @sides = labels.size
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end






# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work? - for me, most of it was about the same. i had to change sides to equal the array's size, i had to use the method empty? to check if the array was empty, and i had to come up with a way to return a randomly selected element of the array when the die was rolled.
# What does this exercise teach you about making code that is easily changeable or modifiable? - if the general structure and functions are there, it is pretty easy to modify. for me, since I did the version last week, I kind of already had a visualization of what the object was supposed to do, so altering it slightly wasn't too difficult.
# What new methods did you learn when working on this challenge, if any? - I learned that sample will take a random sample of an array and return it which is perfect for this. And empty will check if an array has any contents.
# What concepts about classes were you able to solidify in this challenge? - basically just furthered my understanding of instance variables, I forgot to refer to labels with an @ sign the first time I wrote the roll method. and just doing this challenge further cements my conceptual understanding of what an object and class are in ruby.
