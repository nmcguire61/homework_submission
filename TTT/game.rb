class Game

  attr_accessor :player1, :player2
  attr_reader :moves

  WINNING_LINES = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [2,4,6], [0,4,8]]

  def initialize
    @moves = []
  end

  def make_move(player, square)
    input_check = gets.to_i
    case square
    when square <0
      puts "Too low a value please try again."
    when square >8
      puts "Too high a value please try again."
    else
      case empty_check?
      when empty_check? == false
        puts "That box is already taken."
      else
        @moves << Move.new(square, player, symbol_for_player(player))
      end
    end
    #binding.pry
    # if empty_check?(square) == true
      # && value_check?(square) == true
    # else
      # @moves << Move.new(square, player, symbol_for_player(player))
    # end 
  end

  def board
    empty_board.tap do |board|
      moves.each do |move|
        board[move.square] = move.symbol
      end
    end
  end

  def empty_check?(square)
    input_check = get.to_i
    if square == nil
      return true
    else
      return false
    end
  end


  #def value_check?(square)
  
    ## First attempt
    ##loop do
    ## input_check = gets.to_i
    ##  break if input_check >=0 && input_check <=8
    ##  print "Sorry there is no box of that index number #here, please try again."
    ##end

    # Second attempt
    # input_check = gets.to_i
    # if input_check >=0 && input_check <=8
      # return true
    # else
      # return false
    # end
  #end

  def empty_board
    Array.new(9,nil)
  end

  def finished?
    winning_game? || drawn_game?
  end

  def result
    case
    when winning_game?
      "#{moves.last.player} won!"
    when drawn_game?
      "It's a draw!"
    else
      "Game's still in progress."
    end
  end

  def whose_turn
    return player1 if moves.empty?
    moves.last.player == player1 ? player2 : player1
  end

  private
  def winning_game?
    !!WINNING_LINES.detect do |winning_line|
      %w(XXX OOO).include?(winning_line.map { |e| board[e] }.join)
    end
  end

  def drawn_game?
    moves.size == 9
  end

  private
  def symbol_for_player(player)
    case player
    when player1
      'X'
    when player2
      "O"
    else
      raise "Player doesn't exist!"
    end
  end
end

