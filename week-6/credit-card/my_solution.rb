# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Hagai Zwick.
# I spent [4] hours on this challenge.

# Pseudocode

# Input: a 16 digit integer
# Output: boolean value(true or false)
# Steps:
# - SPLIT input into individual digits
# - Iterate from second to last number, doubling every 2nd number
# - SPLIT every two digit number and add all numbers to one sum(they will all be one digit)
# - SUM if divisible by 10, will return TRUE ELSE return FALSE


# class CreditCard

#   def initialize(card_number)
#     @card_number = card_number.to_s.split("").reverse!
#     raise ArgumentError.new("The card number must have 16 digits.") if @card_number.size != 16
#   end

#   def check_card
#     multiple_ten?
#   end

#   def double_digit
#     @card_number.collect! {|x| x.to_i}
#     index = 0
#     while index < @card_number.size
#       if index % 2 ==0
#         @card_number[index]
#       else
#         @card_number[index] *= 2
#       end
#       index += 1
#     end
#     @card_number
#   end

#   def sum_digit
#     @number = double_digit
#     @number.map! do |x|
#       if x > 9
#         x.to_s.split("")
#       else
#         x
#       end
#     end
#      @number.flatten!.map!{|x| x.to_i}
#      @number.inject {|sum, value| sum + value}
#   end

#   def multiple_ten?
#     if sum_digit % 10 == 0
#       true
#     else
#       false
#     end
#   end


# end

#card = ValidateCard.new(4563960122001999)

# Refactored Solution

class CreditCard

  def initialize(card_number)
    @card_number=card_number.to_s.split("").reverse!
    raise ArgumentError.new("The credit card must be sixteen digits.") if @card_number.length != 16
  end

  def check_card
  multiple_ten?
  end

  def double_digits
    @card_number.collect!{ |string| string.to_i }
    output = []
    @card_number.each_with_index do |element, index|
        if index % 2 == 1
          output << element * 2
        else
          output << element
        end
    end
   output
  end

    def sum_digit
    number = double_digits
      number.map! do |sep_number|
      if sep_number > 9
        sep_number.to_s.split("")
      else
        sep_number
      end
    end
      number.flatten!.map!{|string| string.to_i}
     number.inject {|sum, value| sum + value}
  end

   def multiple_ten?
    if sum_digit % 10 == 0
      true
    else
      false
    end
   end

end






# Reflection
# What was the most difficult part of this challenge for you and your pair? - there were several difficult parts. for one, we misunderstood the challenge initially and didn't realize that we were meant to make a class. that led to a generally confusing approach to how these methods were accepting and passing the input. we wrote several functional methods though that worked to output the correct result. then we wrote out the class stuff and just added in the methods that we already had into the class. after renaming some instance variables it passed rspec. beyond the nonsense that comes from misunderstanding instructions, it was generally tricky to manipulate the data in the ways we wanted to. I don't know of a quick easy method that splits integers, so we used split(for strings), which means you are switching back and forth with data types. that is annoying and can be confusing so it led to some debugging. looking back, i would have researched more on how to separate integers.
# What new methods did you find to help you when you refactored? - each_with_index, which allowed us to skip over certain index numbers when iterating. also found .step, but were not able to figure it out in time to use it.
# What concepts or learnings were you able to solidify in this challenge? - general knowledge of classes and instance variables, as well as controling and iterating over data types. one thing im still wondering and will research: can the initial instance variable @card_number be passed through each method and continue to be referred to as @card_number, or would referencing it at a certain point call back to its original contents? I'm a bit confused on best practice for that.