# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)

  i = lower_bound
  hits = 0

  while i <= upper_bound
    j = 0
    while j < list_of_integers.size
      if i == list_of_integers[j]
        hits += 1
      end
      j += 1
    end
    i += 1
  end
  return hits
end