require 'pry-byebug'

require_relative 'chain'
require_relative 'hotel'
require_relative 'room'
require_relative 'person'

require_relative 'methods'

chain = Chain.new name: "Shenanigans Hotels Ltd"

chain.add_hotel(Hotel.new(name: 'Edinburger Centre', post_code: 'E1 1EX', rooms: "14"))
chain.add_hotel(Hotel.new(name: 'Edinburger Airport', post_code: 'E9 3YF', rooms: "25"))
chain.add_hotel(Hotel.new(name: 'Glas Vegas Centre', post_code: 'G1 4VB', rooms: "12"))


binding.pry;


response = menu

until response == 0

  case response
  when 1
    list_hotel(chain)
  when 2
    #make_booking()
  when 3
    #checkout()
  when 4
   # occupancy()
  when 5
    #revenue()
  else
    puts "invalid option"
  end

  puts "Press enter to continue"
  gets

  response = menu
end





#binding.pry;''