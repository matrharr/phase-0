# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  i = 0
  answer = []

  while i < array_1.size
    answer << array_1[i]
    i += 1
  end

  j = 0

  while j < array_2.size
    answer << array_2[j]
    j += 1
  end

  return answer
end