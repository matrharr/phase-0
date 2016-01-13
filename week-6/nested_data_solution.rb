# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]
#============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
#p hash{:outer}{:inner}{"almost"}{3}
p hash[:outer][:inner]["almost"][3]
#============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
#============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of? Array
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
end

p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
=begin
startup_names.map! do |string|
  if string.kind_of? Array &&
     string.kind_of? Array
     string.map! {|base| base.to_s + "ly"}
  end
  if string.kind_of? Array ||
     string.kind_of? Array
     string.map! {|base| base.to_s + "ly"}
   end
    else
    string + "ly"
  end
end
p startup_names
=end




# startup_names.map! do |string|
#   if string.kind_of? Array
#     string.map! do |base|
#       if base.kind_of? Array
#         base.map! {|inner| inner + "ly"}
#       else
#         base + "ly"
#       end
#     end
#   else
#     string + "ly"
#   end
# end
# p startup_names

#refactor

startup_names.flatten!.map! { |string| string + "ly" }

p startup_names

# Reflection
# What are some general rules you can apply to nested arrays? - use index numbers to find elements. look carefully at where the brackets are
# What are some ways you can iterate over nested arrays? - using a ruby method, you can iterate over all of the elements in the first level, then ask if any element is an array, have an if statement that begins an iteration over those elements, ask if any of those elements are arrays, an if statement will begin iterating if so...and so forth
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option? - we used a new one, flatten. it just levels the array into a one dimensional array and then we iterated over that. Of course if for some reason you wanted to keep the arrays nested but perform the same action on each one, you wouldn't want to use flatten. I couldn't find another method that would easily iterate over a nested array and keep it nested, but there could be something out there.
