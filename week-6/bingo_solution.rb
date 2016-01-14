# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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
  # p arr[0].each {|n| p |n}
  # p arr[1].each {|n| p |n}
  # p arr[2].each {|n| p |n}
  # p arr[3].each {|n| p |n}
  # p arr[4].each {|n| p |n}



# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def bingo_selector
    letter_arr = ["B", "I", "N", "G", "O"]
    @rand_num = rand(1..10)
    @bingo_call = [letter_arr.sample, @rand_num ]
  end

  def checker
    bingo_selector
    if @bingo_call[0] =="B"
      i = 0
      while i < @bingo_board.size
        if @bingo_board[i][0] == @bingo_call[1]
          @bingo_board[i][0] = "X"
        end
        i += 1
      end
    elsif @bingo_call[0] =="I"
      i = 0
      while i < @bingo_board.size
        if @bingo_board[i][1] == @bingo_call[1]
          @bingo_board[i][1] = "X"
        end
        i += 1
      end
    elsif @bingo_call[0] =="N"
      i = 0
      while i < @bingo_board.size
        if @bingo_board[i][2] == @bingo_call[1]
          @bingo_board[i][2] = "X"
        end
        i += 1
      end
    elsif @bingo_call[0] =="G"
      i = 0
      while i < @bingo_board.size
        if @bingo_board[i][3] == @bingo_call[1]
          @bingo_board[i][3] = "X"
        end
        i += 1
      end
    elsif @bingo_call[0] =="O"
      i = 0
      while i < @bingo_board.size
        if @bingo_board[i][4] == @bingo_call[1]
          @bingo_board[i][4] = "X"
        end
        i += 1
      end
    end
  p @bingo_call
  display_bingo_board

  end

  def display_bingo_board
    @bingo_board.each do |r|
      puts r.each {|p| p }.join(" ")
    end
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[4, 4, 7, 8, 8],
        [2, 6, 7, 6, 7],
        [8, 8, 9, 8, 5],
        [2, 3, 9, 6, 5],
        [7, 7, 5, 8, 8]]

new_game = BingoBoard.new(board)

10.times do new_game.checker end


#Reflection
