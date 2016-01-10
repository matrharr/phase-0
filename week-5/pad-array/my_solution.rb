# Pad an Array

# I worked on this challenge with Eric Tenza

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


=begin
# 0. Pseudocode

# What is the input?
  an array, a minimum size for the array, and the pad value
# What is the output? (i.e. What should the code return?)
  a single array
# What are the steps needed to solve the problem?
  DESTRUCTIVE METHOD
  1. If the minimum size <= the length of the array, return the array
  2. Subtract the minimum size value from the array.size
  3. Save the above into a variable
  4. Make a counter, set it to zero, and use a while loop that would
     keep pushing the pad value until the counter equaled the minimum
     size
  5. Return the new array

  NON-DESTRUCTIVE METHOD
  1. If the minimum size <= the length of the array, return the array
  2. Create an empty array, push all values of original array
  3. Subtract the minimum size value from the array.size
  4. Save the above into a variable
  5. Make a counter, set it to zero, and use a while loop that would
     keep pushing the pad value to new_array until the counter
     equaled the minimum size
  6. Return the new array
=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    size = min_size - array.length
    counter = 0
    while counter < size
      array << value
      counter += 1
    end
  end
    return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_arr = []
  i = 0
  while i < array.size
    new_arr << array[i]
    i += 1
  end

  if min_size <= new_arr.length
    return new_arr
  else
    size = min_size - array.length
    counter = 0
    while counter < size
      new_arr << value
      counter += 1
    end
  end
  return new_arr
end

pad([1,2,3], 5, "")

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    difference = min_size - array.length
    counter = 0
    while counter < difference
      array << value
      counter += 1
    end
  end
    return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_arr = []
  new_arr.concat(array)
  if min_size <= new_arr.length
    return new_arr
  else
    size = min_size - array.length
    counter = 0
    while counter < size
      new_arr << value
      counter += 1
    end
  end
  return new_arr
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps? - definitely, we wrote good pseudocode that broke the problem into several single actions
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have? - the non destructive method's pseudocode had to get switched up a little bit, because there was an issue with the object id we returned
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them? - The only error we encountered was when our non destructive method was failing a test that said it was acting destructively. it turns out we would return a different object depending on the test, and even though the contents of the object were always correct, the object id was incorrect.
# When you refactored, did you find any existing methods in Ruby to clean up your code? - yes, eric found a great method, concat, that was able remove an entire while loop in our method.
# How readable is your solution? Did you and your pair choose descriptive variable names? - we tried to choose descriptive names and refactored a little to increase readability.
# What is the difference between destructive and non-destructive methods in your own words? - a destructive method changes the object in place, a non desctructive method returns a new object but doesn't change the original object.