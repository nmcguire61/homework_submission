class Move
  attr_reader :square, :player, :symbol

  def initialize(square, player, symbol)
    @square = square
    @symbol = symbol
    @player = player
  end

  #def valid_square (game#)
  #  !! if @square >= 0 
  #  end
  #end
end