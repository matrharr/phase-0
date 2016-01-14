# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Hagai Zwick.
# I spent [3] hours on this challenge.

# Pseudocode

# Input: a 16 digit integer
# Output: boolean value(true or false)
# Steps:
# - SPLIT input into individual digits
# - Iterate from second to last number, doubling every 2nd number
# - SPLIT every two digit number and add all numbers to one sum(they will all be one digit)
# - SUM if divisible by 10, will return TRUE ELSE return FALSE


class CreditCard

  def initialize(card_number)
    @card_number = card_number.to_s.split("").reverse!
    raise ArgumentError.new("The card number must have 16 digits.") if @card_number.size != 16
  end

  def check_card
    multiple_ten?
  end

  def double_digit
    @card_number.collect! {|x| x.to_i}
    index = 0
    while index < @card_number.size
      if index % 2 ==0
        @card_number[index]
      else
        @card_number[index] *= 2
      end
      index += 1
    end
    @card_number
  end

  def sum_digit
    @number = double_digit
    @number.map! do |x|
      if x > 9
        x.to_s.split("")
      else
        x
      end
    end
     @number.flatten!.map!{|x| x.to_i}
     @number.inject {|sum, value| sum + value}
  end

  def multiple_ten?
    if sum_digit % 10 == 0
      true
    else
      false
    end
  end


end

#card = ValidateCard.new(4563960122001999)

# Refactored Solution







# Reflection
