# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [1.5] hours on this challenge.

# Pseudocode
# 1. initalize with array arg
#     create instance variable equal to array
# 2. bingo method that will RETURN string IF bingo
#     this method calls other methods that check for bingo
# 3. horizontal win method checks bingo horizontal
#     checks to see if any nested arrays contain only 'x'
# 4. vertical win method checks bingo vertical
#     iterates over each array(arr[i][i])
# 5. right_to_left win method checks bingo r to l
#     checks one condition, specify each array index
# 6. left_to_right win method checks bingo l to r
#     checks one condition, specify each array index



# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   def initialize(board)
#     @board = board
#   end

#   def check_bingo
#     if horizontal_win? == true || vertical_win? == true || right_to_left_win? == true || left_to_right_win? == true
#       p "BINGO!"
#     end
#   end

#   def horizontal_win?
#     i = 0
#     while i < @board.length
#       if @board[i][0]=='x' && @board[i][1]=='x' && @board[i][2]=='x' && @board[i][3]=='x' && @board[i][4]=='x'
#         return true
#       end
#       i += 1
#     end
#   end

#   def vertical_win?
#     i = 0
#     while i < @board.length
#       if @board[0][i]=='x' && @board[1][i]=='x' && @board[2][i]=='x' && @board[3][i]=='x' && @board[4][i]=='x'
#         return true
#       end
#       i += 1
#     end
#   end


#   def right_to_left_win?
#     if @board[0][0]=='x' && @board[1][1]=='x' && @board[2][2]=='x' && @board[3][3]=='x' && @board[4][4]=='x'
#       return true
#     end
#   end

#   def left_to_right_win?
#     if @board[0][4]=='x' && @board[1][3]=='x' && @board[2][2]=='x' && @board[3][1]=='x' && @board[4][0]=='x'
#       return true
#     end
#   end

# end




# Refactored Solution

class BingoScorer

  def initialize(board)
    raise ArgumentError.new('You must enter nested five arrays with five integers!') if board[0].is_a?(Array) == false
    @board = board
  end

  def check_bingo
    if horizontal_win? == true || vertical_win? == true || right_to_left_win? == true || left_to_right_win? == true
      p "BINGO!"
    else
      p "NOOOOOOOOOT A BINGO!"
    end
  end

private

  def horizontal_win?
    @board.each_with_index do |item, index|
      if @board[index][0]=='x' && @board[index][1]=='x' && @board[index][2]=='x' && @board[index][3]=='x' && @board[index][4]=='x'
        return true
      end
    end
  end

  def vertical_win?
    @board.each_with_index do |item, index|
      if @board[0][index]=='x' && @board[1][index]=='x' && @board[2][index]=='x' && @board[3][index]=='x' && @board[4][index]=='x'
        return true
      end
    end
  end


  def right_to_left_win?
    if @board[0][0]=='x' && @board[1][1]=='x' && @board[2][2]=='x' && @board[3][3]=='x' && @board[4][4]=='x'
      return true
    end
  end

  def left_to_right_win?
    if @board[0][4]=='x' && @board[1][3]=='x' && @board[2][2]=='x' && @board[3][1]=='x' && @board[4][0]=='x'
      return true
    end
  end

end




# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
game = BingoScorer.new([[47, 44, 71, 'x', 88],
   [22, 69, 75, 'x', 73],
   [83, 85, 97, 'x', 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 'x', 83]])
game.check_bingo

# Reflection
# What concepts did you review or learn in this challenge?
# - I used each with index successfully for the first time so that was inspiring. It was good to get back into ruby syntax and class structure, instance variables. I also had the methods output with return because the public method is what calls all the rest.
# What is still confusing to you about Ruby?
# - I think I can solve most problems at the moment. Something bigger, like making a functional chess game seems like it would present a lot of challenges, but I'm not sure if the only real difficulty would be breaking down the problem into manageable chunks accurately. Meaning to say, I don't know what concepts I haven't learned that might come up in that type of challenge.
# What are you going to study to get more prepared for Phase 1?
# - As far as Ruby, I'll probably do more of these review challenges, and if I have time, try to build something bigger, like the previously mentioned chess game.