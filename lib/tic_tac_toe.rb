class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
WIN_COMBINATIONS = [
  [0, 1, 2]
  [0, 4, 8]
  [0, 3, 6]
  [1, 4, 7]
  [2, 5, 8]
  ]
end