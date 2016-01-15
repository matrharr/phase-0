# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # - create letter array that holds the five letters
  # - run sample method on letter array
  # - run a rand method and give a range 1-100
  # - store the sampled letter and the rand number in an array variable, selected

# Check the called column for the number called.
  # - give the letter a corresponding index, like b is 0, i is 1, etc.
  # - Whichever index the letter points to, look in that index for each array

# If the number is in the column, replace with an 'x'
  # - IF the number matches the number in the column, replace the value of that array's index with 'x' with array[i][j] = 'x'

# Display a column to the console
  # p arr[0]

# Display the board to the console (prettily)
  # @bingo_board.each do |r|
    # puts r.each {|p| p }.join("  ")
    # end



# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def bingo_selector
#     letter_arr = ["B", "I", "N", "G", "O"]
#     @rand_num = rand(1..10)
#     p @bingo_call = [letter_arr.sample, @rand_num ]
#   end

#   def checker
#     bingo_selector
#     if @bingo_call[0] =="B"
#       i = 0
#       while i < @bingo_board.size
#         if @bingo_board[i][0] == @bingo_call[1]
#           @bingo_board[i][0] = "X"
#         end
#         i += 1
#       end
#     elsif @bingo_call[0] =="I"
#       i = 0
#       while i < @bingo_board.size
#         if @bingo_board[i][1] == @bingo_call[1]
#           @bingo_board[i][1] = "X"
#         end
#         i += 1
#       end
#     elsif @bingo_call[0] =="N"
#       i = 0
#       while i < @bingo_board.size
#         if @bingo_board[i][2] == @bingo_call[1]
#           @bingo_board[i][2] = "X"
#         end
#         i += 1
#       end
#     elsif @bingo_call[0] =="G"
#       i = 0
#       while i < @bingo_board.size
#         if @bingo_board[i][3] == @bingo_call[1]
#           @bingo_board[i][3] = "X"
#         end
#         i += 1
#       end
#     elsif @bingo_call[0] =="O"
#       i = 0
#       while i < @bingo_board.size
#         if @bingo_board[i][4] == @bingo_call[1]
#           @bingo_board[i][4] = "X"
#         end
#         i += 1
#       end
#     end
#   p @bingo_call
#   display_bingo_board

#   end

#   def display_bingo_board
#     @bingo_board.each do |r|
#     puts r.each {|p| p }.join("  ")
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize
    @bingo_board = create_bingo_board
  end

  def create_bingo_board
    board = Array.new(5) {Array.new(5)}
    i = 0
    while i < board.size
      board[i][0] = rand(1..15)
      board[i][1] = rand(16..30)
      board[i][2] = rand(31..45)
      board[i][3] = rand(46..60)
      board[i][4] = rand(60..75)
    i += 1
    end
      board[2][2] = "X"
      board
  end

  def bingo_selector
    @letter = ["B", "I", "N", "G", "O"].sample
    if @letter == "B"
      @rand_num = rand(1..15)
    elsif @letter == "I"
      @rand_num = rand(16..30)
    elsif @letter == "N"
      @rand_num = rand(31..45)
    elsif @letter == "G"
      @rand_num = rand(46..60)
    elsif @letter == "O"
      @rand_num = rand(60..75)
    end
    output = [@letter, @rand_num]
  end

  def play
    p bingo_selector
    counter = 0
    case @letter
    when "B"
      while counter < @bingo_board.size
        if @bingo_board[counter][0] == @rand_num
           @bingo_board[counter][0] = "X"
        end
        counter += 1
      end
    when "I"
      while counter < @bingo_board.size
        if @bingo_board[counter][1] == @rand_num
           @bingo_board[counter][1] = "X"
        end
        counter += 1
      end
    when "N"
      while counter < @bingo_board.size
        if @bingo_board[counter][2] == @rand_num
           @bingo_board[counter][2] = "X"
        end
        counter += 1
      end
    when "G"
      while counter < @bingo_board.size
        if @bingo_board[counter][3] == @rand_num
           @bingo_board[counter][3] = "X"
        end
        counter += 1
      end
    when "O"
      while counter < @bingo_board.size
        if @bingo_board[counter][4] == @rand_num
           @bingo_board[counter][4] = "X"
        end
        counter += 1
      end
    end

    display_bingo_board
  end

    def display_bingo_board
      @bingo_board.each do |r|
      puts r.each {|p| p }.join("      ")
      end
    end
end




# Maybe add case, maybe use each with index method
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
#board = [[4, 4, 7, 8, 8],
        # [2, 6, 7, 6, 7],
        # [8, 8, 9, 8, 5],
        # [2, 3, 9, 6, 5],
        # [7, 7, 5, 8, 8]]

new_game = BingoBoard.new

new_game.play


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?- pseudocoding was a bit tough because I haven't created a class of this size before, so there were a few things that were more complicated than I anticipated. In general, I could probably use more indents and spacing, capitalize ruby keywords and methods. Doing those best practices would certainly make it easier for someone else to read and understand my pseudocode.
# What are the benefits of using a class for this challenge?  - you want to create a board object that is repeatedly affected by the methods. So when you create a new instance of a bingoboard you have a unique board that can participate in the calling of letters and numbers. if you created several boards and they were all responding to the same bingo call(like a real game of bingo), it is likely that one board would finish the game before the others. classes allow for unique objects to be created like in this challenge.
# How can you access coordinates in a nested array? - if you know what you are looking for you could put something like bingo_arr[0][2] and get what you want. if you were iterating and had really no idea where the element you wanted to affect was, you would run a loop inside of loop which would iterate through the nested arrays.
# What methods did you use to access and modify the array? - I used while loops, I used .each, .join. I tried to use each with index on the play method, but couldn't get it to work. I think that for what I want to do, there is a way to use that method, but I just couldn't get it going in time.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called? - i learned about each with index, which takes two parameters, element and index. you can then call these in the block, doing whatever. I think I could use this method to replace my while loops, but I couldn't get it working in time.
# How did you determine what should be an instance variable versus a local variable? - any variable that is being used across methods should be an instance variable so that it can be accessed across the class. local variable are just used only in the method it originates. One question I would love to have answered: if the output of a method is an altered instance variable, and there is another (2nd)method that performs another action on that altered version, is it best practice to call the first method or the instance variable in the 2nd method?
# What do you feel is most improved in your refactored solution? - I created a more realistic bingo board and the numbers called match the actual range they should for each letter in bingo. I changed the play method to a case statement which I think looks a bit better and made the loops a bit simpler. I renamed some variables to enhance readability. Going forward, I would look to refactor the play method using ruby methods that would work.
