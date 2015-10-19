require 'pry-byebug'

require_relative 'game'
require_relative 'move'



def expect (thing, other_thing)
  raise "#{thing} did not equal #{other_thing}" unless thing == other_thing
end

def print_board(g)
  puts(g.board.each_slice(3).map do |row|
    row.map { |e| e || ' ' }.join(' | ')
  end.join("\n---------\n"))
end

# g = Game.new
# 
# expect g.class.name, "Game"
# 
# expect g.moves, []
# 
# g.player1 = 'Michael'
# g.player2 = 'Neil'
# 
# expect g.player1, 'Michael'
# expect g.player2,  'Neil'
# 
# g.make_move'Michael', 4
# 
# expect g.moves.last.class.name, "Move"
# expect g.moves.last.player, "Michael"
# expect g.moves.last.square, 4
# expect g.moves.last.symbol, "X"
# 
# g.make_move'Neil', 2
# 
# expect g.moves.last.class.name, "Move"
# expect g.moves.last.player, "Neil"
# expect g.moves.last.square, 2
# expect g.moves.last.symbol, "O"
# 
# expect g.finished?, false
# 
# g.make_move 'Michael', 0
# g.make_move 'Neil', 1
# g.make_move 'Michael', 8
# 
# expect g.result, "Michael won!"

#expect g.finished?, true


puts `clear`
puts "Lets Play Tic Tac Toe"

g = Game.new
puts "What is  Player 1's name? "
g.player1 = gets.chomp

puts "What is  Player 2's name? "
g.player2 = gets.chomp

until g.finished?
  puts `clear`
  puts print_board(g)
  puts "Where is #{g.whose_turn}'s' move?"
  g.make_move g.whose_turn, gets.to_i.abs
end

puts `clear`
puts print_board(g)
puts g.result
gets

#binding.pry;''
