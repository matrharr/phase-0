# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)

  if list_of_nums.size == 0
    return nil
  end

  n = 0
  smallest = list_of_nums.max + 1

  while n < list_of_nums.size
    if list_of_nums[n] < smallest
      smallest = list_of_nums[n]
    end
    n += 1
  end

  return smallest

end