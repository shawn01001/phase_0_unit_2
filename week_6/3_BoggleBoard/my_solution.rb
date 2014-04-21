# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [with: Anup Pradhan].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard

  def initialize(boggle)
    @boggle = boggle
  end
  
  def create_word(*coords)
    coords.map { |coord| @boggle[coord.first][coord.last]}.join("")
  end
  
  def get_row(row)
    @boggle[row].join("")
  end
  
  def get_col(col)
    col = @boggle.map {|x| x[col]}.join("")
  end
    
    def get_character(row,col)
    @boggle[row][col]
    end
end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 

 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
boggle_board = BoggleBoard.new(dice_grid)
p boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock" 
p boggle_board.get_row(0) 
p boggle_board.get_col(0) 
p boggle_board.get_row(1) 
p boggle_board.get_col(1) 
p boggle_board.get_row(2) 
p boggle_board.get_col(2) 
p boggle_board.get_row(3) 
p boggle_board.get_col(3) 
p boggle_board.get_character(3,2) == "k"



# 5. Reflection 