# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # separate single string into several
  # create empty hash
  # insert each string as key
  # set default quantity as value
  # call print_list method
# output: hash

# Method to add an item to a list
# input: list name, item name and optional quantity
# steps:
  # add key/value pair (item and quantity)
# output: updated hash

# Method to remove an item from the list
# input: list name, item name
# steps:
  # remove key
# output: edited hash

# Method to update the quantity of an item
# input: list name, item name, updated quantity
# steps: reassign a item name's quantity to updated quantity
# output: edited hash

# Method to print a list and make it look pretty
# input: list name
# steps: print keys and values using interpolation
# output: a pretty string

def createlist(items)
  new_items = items.split(" ")
  list = Hash.new
  new_items.each {|item| list[item] = 1}
   prettylist(list)
  # use print_list method
end


def additem(list, item, quantity=1)
  list[item] = quantity
  p list
end

def rmitem(list, item)
  list.delete(item)
  p list
end

def chngqnt(list, item, quantity)
  list[item] = quantity
  p list
end

def prettylist (list)
  list.each {|item ,quantity| p "We want to buy #{quantity} #{item}" }
end


# DRIVER CODE

testlist = createlist("carrots apples cereal pizza")

additem(testlist, "hat", 2)

additem(testlist, "bike")

rmitem(testlist, "carrots")

chngqnt(testlist, "carrots", 100 )

prettylist(testlist)

# What did you learn about pseudocode from working on this challenge? - I learned how to better organize the steps. My pair was great with talking through each step, and the function of the methods were simple enough to be completed within just a couple of moves
# What are the tradeoffs of using Arrays and Hashes for this challenge? - hashes seemed like the obvious choice. to be honest, i'm not sure how you could do this using an array. I suppose the index could be the quantity of an item, but then you couldn't have items with the same quantity and you would have some indexes containing nil.
# What does a method return? - a method returns the last evaluated code
# What kind of things can you pass into methods as arguments? - you can pass variables that were given data through other methods
# How can you pass information between methods?- by creating a variable outside of all the methods and passing it into the methods as an argument
# What concepts were solidified in this challenge, and what concepts are still confusing? - driver code was clarified as it relates to passing information between methods. several syntactic moves with hashes have become clear. I'm still a little confused reading some of the error codes and finding the problem. Overall, feeling good!