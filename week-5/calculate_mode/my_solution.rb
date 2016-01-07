# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Linda Oanh Ho ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array that returns the element with the greatest number on instances
# What are the steps needed to solve the problem?
=begin
-Look at the array and count the number of times an element occurs within the array
-Store information into a hash
-Identify the largest value and create a variable that holds this number
-If an element is equal to that number, return the element
-Return the key with the largest value
=end


# 1. Initial Solution
# def mode(array)
#   word_count = Hash.new
#   array.each do |item|
#     word_count[item] = array.grep(item).size
#   end
#     largest_number = word_count.max_by {|x,y| y} #return an array
#     largest_number = largest_number[1] #retrieving index 1 of array

#   answer = []
#   word_count.each_pair do |key, value|
#     if value == largest_number
#       answer << key
#     end
#   end
#   p answer
# end



# 3. Refactored Solution
def mode(array)
  word_count = Hash.new
  array.each do |item|
    word_count[item] = array.grep(item).size
  end
  largest_count = word_count.max_by {|item, count| count}
  largest_count = largest_count[1]

  mode_array = []
  word_count.each_pair do |key, value|
    if value == largest_count
      mode_array << key
    end
  end
  p mode_array
end



# 4. Reflection
# Which data structure did you and your pair decide to implement and why? - we decided to use a hash to point each element to the number of times it occurred. given that we were supposed to find the mode, it seemed like the most obvious route to go, as we could directly associate the element with the number of occurences.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? - Yes, we came up with some good pseudocode that made it easier to get through each part of the challenge. it definitely made the difference from a frustrating task.
# What issues/successes did you run into when translating your pseudocode to code? - I don't think any issues arose from the pseudocode because it overall made sense. it was successful because it divided our solution into two parts, and divided those parts into a couple of steps. It was relatively straightforward to translate into code, by either writing out something, or using a method.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? - we used each, max_by, grep, each_pair. When we refactored we couldn't find anything new that would really make a difference. grep was crucial to getting this challenge done for me, without that method, I definitely would have been stuck for a bit on how to stick the number of occurences in the hash for each key. i found that ruby docs explains the function of methods really well and using irb or driver code is a pretty fast way to understand what exactly a function does and how to use it.