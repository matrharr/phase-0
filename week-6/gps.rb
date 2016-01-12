# Your Names
# 1) Sydney
# 2) Matt

# We spent [1] hours on this challenge.

=begin
What is this code actually trying to do?
First definition: serving size calculator
+++++ it takes an item and number of ingredients
+++++ makes sure it is in the library (raises error if not)
+++++ serving size = value at item in the hash
+++++ remaining ingredients = num ingred % serving size
=end

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  desserts = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a dessert we serve") unless desserts.has_key?(item_to_make)

  #-------------------------------------------------

  serving_size = desserts[item_to_make]
  remaining_servings = num_of_servings % serving_size

  extra = "cookie" if remaining_servings < 5
  else extra = "cake"

  case remaining_servings
  when 0
    return "Calculations complete: Make #{num_of_servings / serving_size} #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_servings / serving_size} #{item_to_make}. You still have #{remaining_servings} servings remaining. Suggested baking items: #{remaining_servings/desserts[extra]} of #{extra}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie",12)

p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge? - that its important to look at the code as a whole and consider what its main purposes are. from there, you can come up with the best routes to get what you want done, which may or may not lead to refactoring the old code. beyond that, you want to name variables and parameters in a way that makes sense so that you know what those elements are doing.
# Did you learn any new methods? What did you learn about them? - we used has_key? which is like include? for a hash. it just searches for the given element in a hash. it worked for us to validate the item to make argument
# What did you learn about accessing data in hashes? - that when using each, you can use just one argument and it will sift through the keys
# What concepts were solidified when working through this challenge? - mostly the way to approach refactoring, by looking at the code as a whole, breaking it into parts and then thinking of the most effective ways to code those parts.

