# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [with: Anup Pradhan].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
=begin
Define a Class Board with the initializer as an array
Define a Method create_word
    The method create_word takes 1 argument called coords which will take 0 to many values
    This method will create a new String based on the row number as first coord and column number as second coord using join
Define a method get_row that takes one argument
    it will return all the elements within the row number passed
Define a method get_col takes one argument
    Declare variable i and set it to 0
    Declare empty array column_values
    Loop through each sub-array and pushing values to column_values
    incrementing i by 1
=end  

# Initial Solution
=begin
class Board
  def initialize(boggle)
    @boggle = boggle
  end
  
  def get_row(row)
    @boggle[row]
  end
  
  def get_col(col)
    
    col_values = []
    @boggle.each do |x| 
      col_values << x [col]
      end
    return col_values
    end
    
    def boggle_board(row,col)
    @boggle[row][col]
    end
end
=end
# Refactored Solution
class Board
  def initialize(boggle)
    @boggle = boggle
  end
  
  def get_row(row)
    @boggle[row]
  end
  
  def get_col(col)
    
    col_values = []
    @boggle.each do |x| 
      col_values << x [col]
      end
    return col_values
    end
    
    def boggle_board(row,col)
    @boggle[row][col]
    end
end

# DRIVER TESTS GO BELOW THIS LINE
x = Board(boggle_board)
x.get_row(0) == ["b", "r", "a", "e"]
x.get_col(0) == ["b", "i", "e", "t"]

# Reflection
=begin
Pairing with Anup was great for this challenge.  We worked through the first two parts quickly.
I was stumped on the third part 'get_col', so it was refreshing pairing with someone that knew Ruby syntax
better than me.  


  
=end 

