class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
WIN_COMBINATIONS = [
  [0, 1, 2],
  [0, 4, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [3, 4, 5],
  [6, 7, 8]
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(choice)
    choice.to_1 -1
  end
  
  def move(choice, player = "X" )
    @board[choice] = player 
  end
  
  def position_taken?
    def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end
  
  def vaid_move
    def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn 
     puts "Player #{current_player}, please enter a number 1-9:"
    input = gets.strip
    index = input_to_index(input)
    player_x = current_player
    if valid_move?(index)
      move(index, player_x)
      display_board
    else
      turn
    end
  end
  
  def turn_count
    turn_total = 0 
    @board.each do |space|
      if space == "X" || space == "O"
        turn_total += 1
      end
    end
  end
  
end