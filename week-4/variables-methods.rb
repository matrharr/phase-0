#Greeting

puts "Hello, what is your first name?"
first_name = gets.chomp

 puts "And what is your middle name?"
middle_name = gets.chomp

 puts "And finally, what is your last name?"
last_name = gets.chomp

 p "Your full name is #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}. Boom."


#Bigger Number

puts "What is your favorite number?"
number = gets.chomp

puts "That's pretty good, but I think you should consider #{number.to_i + 1}"


# https://github.com/matrharr/phase-0/blob/master/week-4/define-method/my_solution.rb

# https://github.com/matrharr/phase-0/blob/master/week-4/define-method/address/my_solution.rb

# https://github.com/matrharr/phase-0/blob/master/week-4/define-method/math/my_solution.rb




# How do you define a local variable? --- You just type out whatever you want to call the variable, then type an equal sign and then assign whatever value you want, string, integer, etc.
# How do you define a method? --- it starts with def, then the name of the method is anything you want lowercase, then optional parameters with optional parentheses, then you put the code in the body of the method, finishing with a new line and end.
# What is the difference between a local variable and a method? --- A variable just holds something, whereas a method does something, performs a function.
# How do you run a ruby program from the command line? --- you type ruby then the file name.rb.
# How do you run an RSpec file from the command line? --- you type rspec then the file name.rb.
# What was confusing about this material? What made sense? --- Everything was pretty good.