# Factorial

# I worked on this challenge with: Emily Bosakowski


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  end
    counter = 1
    answer = 1
    until counter == number
      answer = answer * (counter + 1)
      counter += 1
    end
  return answer
end
