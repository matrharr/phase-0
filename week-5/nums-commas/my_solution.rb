# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?) a string
# What are the steps needed to solve the problem?
  # count the number of digits to determine if any commas are needed
  # IF the number is 3 or fewer digits, the number will be returned
  # ELSE set a counter at -1
  # SPLIT the number into an array of strings
  #counting from the end of the array backwards(using negative index positions), insert a comma after every third digit
  # return the result


# 1. Initial Solution

# def separate_comma (n)
#   i = -1
#   answer = []
#   arr = n.to_s.split("")
#   if arr.size < 4
#     return arr.join
#   else
#     until arr[i] == nil
#       if  i%3 == 0
#         answer << arr[i]
#         answer << ","
#         i -= 1
#       end
#       answer << arr[i]
#       i -= 1
#     end
#   end
#   answer.reverse!
#   if answer[0] == nil
#     answer.shift
#   end
#   if answer[0] == ","
#     answer.shift
#   end
#   p answer.join
# end

# separate_comma(100000)


# # 2. Refactored Solution
def separate_comma (n)
  arr = n.to_s.split("")
  if arr.size < 4
    p arr.join
  else
    i = -4
    while i >= (arr.size* -1)
      arr.insert(i, ",")
      i -= 4
    end
  end
  p arr.join("")
end

separate_comma(100000)

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
#- The process was first determining the number of digits in the number, then counting the digits backwards, then inserting a comma after every third number. I thought about counting from the front, but couldn't figure out how to do it so it would work with any integer.
# Was your pseudocode effective in helping you build a successful initial solution?
#- it was pretty effective to get me started on the right track, but I didn't work out all of the nitty gritty in the pseudo so there was some struggle in writing code that passed all the tests.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#- i used insert to cut back on some code. my experience was pretty straightforward, methods in ruby are pretty easily found if you know what you are looking for. it changed it a little bit.
# How did you initially iterate through the data structure?
# - i iterated backwards and adding a comma every third digit until i equaled nil.
# Do you feel your refactored solution is more readable than your initial solution? Why?
#- Yes, its more readable because it is shorter, just more obvious what each thing is doing.
