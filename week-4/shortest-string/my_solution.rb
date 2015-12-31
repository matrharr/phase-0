# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.size == 0
    return nil
  end
  i = 0
  shortest = list_of_words[i]
  while i < list_of_words.size
    if list_of_words[i].length < shortest.length
      shortest = list_of_words[i]
    end
    i += 1
  end
  return shortest
end