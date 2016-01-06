# Pseudocode
# input: an array of strings
# output: an array of several arrays holding 3-5 strings
# steps:
#   count how many strings there are
#   the number of strings will indicate how many empty arrays will be needed
#   create necessary number of empty arrays
#   place 5 strings in each array, making sure that the last array has at least 3
#   return the arrays

#Initial Solution
def groups (student_arr)
  num_of_arrays = student_arr.size/5
  if student_arr.size%5 != 0
    num_of_arrays += 1
  end

  i = 0
  j = 0
  answer = Array.new(num_of_arrays) {Array.new}
  while j < student_arr.size
    while i < num_of_arrays
      answer[i] << student_arr[j]
      i += 1
      j += 1
    end
      i = 0

  end
  p answer
end

groups(["mark", "jeff", "casey", "abbie", "billy", "carla", "anthony", "bob", "xavier", "trent", "boogie", "ren", "sam", "ted", "sarah", "matt", "brenda", "becky", "gordon", "andy", "whuwhu", "buka", "suki", "watanki", "mark", "jeff", "casey", "abbie", "billy", "carla", "anthony", "bob"])

# Refactored Code
# I tried to find methods but I couldn't really make anything work. I also tried to make my code more DRY but I couldn't find anything to remove or change that didn't break the code. Even though I couldn't find ways to change it, I'm not sure if I missed something.

# What was the most interesting and most difficult part of this challenge?
#- it was interesting to figure out how to create the arrays within arrays and fill them in this challenge. the most difficult for me was making proper use of the counters so that i would push the names into the arrays correctly. its easy for me to get those confused
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# - definitely, the more I do it, the better I get.
# Was your approach for automating this task a good solution? What could have made it even better?
# - I think it was a good solution because it works and seems like an appropriate amount of code. I suppose using one while loop rather than two could be more efficient, but I couldn't figure out how to do that.
# What data structure did you decide to store the accountability groups in and why?
# - I stored it in an array of arrays. it seemed to me to make the most sense, given that i wanted to return several groups(lists of strings).
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# - I learned that its really difficult to refactor. I'm not sure if my current solution can be shaved down at all, or if the only way to make it cleaner is to approach the problem in a totally different way from the start.
