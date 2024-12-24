# Valid Sudoku: Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be validated.

def is_valid_sudoku(board)
  rows = Array.new(9) { {} } 
  cols = Array.new(9) { {} } 
  boxes = Array.new(9) { {} } 

  (0...9).each do |row|
    (0...9).each do |col|
      num = board[row][col]
      next if num == '.' # Skip empty cells

      box_index = (row / 3) * 3 + (col / 3) 

      # Check if the number already exists in the row, column, or 3x3 box
      if rows[row][num] || cols[col][num] || boxes[box_index][num]
        return false
      end

      # Mark the number as seen in the row, column, and 3x3 box
      rows[row][num] = true
      cols[col][num] = true
      boxes[box_index][num] = true
    end
  end

  true # If no conflicts were found, the board is valid
end


board = [
  ["5", "3", ".", ".", "7", ".", ".", ".", "."],
  ["6", ".", ".", "1", "9", "5", ".", ".", "."],
  [".", "9", "8", ".", ".", ".", ".", "6", "."],
  ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
  ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
  ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
  [".", "6", ".", ".", ".", ".", "2", "8", "."],
  [".", ".", ".", "4", "1", "9", ".", ".", "5"],
  [".", ".", ".", ".", "8", ".", ".", "7", "9"]
]

puts is_valid_sudoku(board) 
