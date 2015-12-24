# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword end
# 5. Where is the error in the code?
# => its at the very end of the file
# 6. Why did the interpreter give you this error?
# => the while loop was missing an end

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => object name error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method
# 4. Where is the error in the code?
# => it doesnt show where with an arrow
# 5. Why did the interpreter give you this error?
# => south_park has not been defined in any way so it sends an error

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => no method error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method
# 4. Where is the error in the code?
# => does not show an arrow
# 5. Why did the interpreter give you this error?
# => because the method cartman has not been defined

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => 69
# 5. Why did the interpreter give you this error?
# => the method is written without parameters, yet it is called with a parameter

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
  # puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 84
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments
# 4. Where is the error in the code?
# => 88
# 5. Why did the interpreter give you this error?
# => the method has a parameter that does not get used when the method is called



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
  # puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments 1 for 2
# 4. Where is the error in the code?
# => 109
# 5. Why did the interpreter give you this error?
# => the method has two parameters, but when called, only one is given

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => type error
# 3. What additional information does the interpreter provide about this type of error?
# => string cant be coerced into fixnum
# 4. Where is the error in the code?
# => 124
# 5. Why did the interpreter give you this error?
# => the code is trying to perform a math function, multiplication, on a string

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => 139
# 5. Why did the interpreter give you this error?
# => you cannot divide by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => load error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => 155
# 5. Why did the interpreter give you this error?
# => the file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?--- The first example was tricky because it referred to the end of this file, but it was because the method was missing an end
#How did you figure out what the issue with the error was?--- I looked at the code and saw there was a def and while, both require and end, but there was only one end
#Were you able to determine why each error message happened based on the code? --- Yes, the error messages are pretty helpful to push you to look in the right places.
#When you encounter errors in your future code, what process will you follow to help you debug? --- I'll check the error type and location and go from there.