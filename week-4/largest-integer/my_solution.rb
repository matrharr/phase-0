# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)

  if list_of_nums.size == 0
    return nil
  end

  n = 0
  largest = list_of_nums.min - 1

  while n < list_of_nums.size
    if list_of_nums[n] > largest
      largest = list_of_nums[n]
    end
    n += 1
  end
  return largest
end