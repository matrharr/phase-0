# Calculate a Grade

# I worked on this challenge with Matthew B.


# Your Solution Below

def get_grade(number)
  if number >= 90 && number < 101
     "A"
  elsif number >= 80 && number < 90
     "B"
  elsif number >= 70 && number < 80
     "C"
  elsif number >= 60 && number < 70
     "D"
  elsif number < 60
     "F"
  end
end