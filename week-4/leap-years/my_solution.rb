# Leap Years

# I worked on this challenge [by myself, with: ].


#Your Solution Below
def leap_year?(number)
  if number%4 == 0 && number%100 != 0
    true
  elsif number%400 == 0
    true
  else
    false
  end

end


