class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
WIN_COMBINATIONS
  [0, 1, 2]
  [0, 5, 9]
  [0, 4, 7]
  
end