# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# input = integer
# output = boolean
# steps:
# take the integer as arg
# create an array that hold 3 integers [0,1,1]
# UNTIL the arg is equal to or greater than array[2]
#    array[1] + array[2]
# IF arg is equal to array[2]
#   true
# else arg is greater than arr[2]
#   false


# Initial Solution

# def is_fibonacci?(num)
#   fib_arr = [0,1,1]
#   i = 1
#   until num <= fib_arr[i]
#     fib_arr << fib_arr[i] + fib_arr[i + 1]
#     i += 1
#   end
#   if fib_arr[i] == num
#     true
#   else
#     false
#   end
# end

#is_fibonacci?(55)

# Refactored Soltion

def is_fibonacci?(num)
  fib_arr = [0,1]
  i = 0
  until num <= fib_arr[i]
    fib_arr << fib_arr[i] + fib_arr[i + 1]
    i += 1
  end
  if fib_arr[i] == num
    true
  else
    false
  end
end

is_fibonacci?(55)


=begin
# Reflection
What concepts did you review in this challenge?
- reviewed programming logic I guess and how to think a bit abstract about
some calculations. This challenge also made me think about the structure of
the operations and how to get the desired output.
What is still confusing to you about Ruby?
- I still don't know a ton of methods right out of the bag, meaning I'm
not really thinking out my initial solutions with a ruby method in mind,
and when I'm trying to refactor, I often have a hard time incorporating
methods without really forcing it and making the code more ridiculous.
What are you going to study to get more prepared for Phase 1?
- I'm going to do more review challenges and work on adding js to html
=end