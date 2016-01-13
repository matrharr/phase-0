# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

end