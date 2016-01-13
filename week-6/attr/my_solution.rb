#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_accessor :name
  def initialize
    @name = "Matt"
  end

end


class Greetings
  def initialize
    @the_greeted = NameData.new
  end

  def hello
    p "Hello #{@the_greeted.name}! What a lovely day 'tis."
  end

end

greet = Greetings.new
greet.hello


# Reflection
# Release 1
# What are these methods doing? - the methods return instance variables and other methods are allowing those instance variables to be modified
# How are they modifying or returning the value of instance variables? - they modify the instance variables by allowing an argument to be passed that becomes the value of the instance variable. the syntax is different, as they use an = between the method name and the argument.
# Release 2
# What changed between the last release and this release? - what is age method was commented out and attr reader was added
# What was replaced? - the age method's function was replaced with attr reader
# Is this code simpler than the last? - most definitely.
# Release 3
# What changed between the last release and this release? - attr writer was added
# What was replaced? change my age method was replaced with attr writer
# Is this code simpler than the last? - yes it is
#Release 6
# What is a reader method? - a reader method allows the user to see an instance variable's value
# What is a writer method? - a writer method allows the user to change the value of a variable
# What do the attr methods do for you? - they create reader/writer methods in one line without having to write all of the traditional code you would to create those methods
# Should you always use an accessor to cover your bases? Why or why not? - you should use an accessor when you want to allow for instance variables to be read or to be changed. So maybe not always, but it seems to me that you would at least use attr reader a ton.
# What is confusing to you about these methods? - im sure there is more depth to what these methods do and interesting ways to use them, but for what I was provided with in this challenge, I feel like I've got a good grasp. In previous work I'd done with classes and attr methods I was pretty confused, but the way this challenge moved methodically through what an attr method actually is, my understanding is much better.
