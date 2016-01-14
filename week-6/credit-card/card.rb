class ValidateCard

  def initialize(card_number)
    @card_number = card_number.to_s.split("").reverse!
    raise ArgumentError.new("The card number must have 16 digits.") if @card_number.size < 16
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

 card = ValidateCard.new(4563960122001999)
p card.check_card
