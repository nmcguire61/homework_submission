def list_hotel(chain)
  puts chain.list_hotel
end

def menu
  puts`clear`
  puts "*** Schenanigans Hotel Company ***"
  puts
  puts "What would you like to do today?:"
  puts
  puts
  puts "1. List your hotels;"
  puts "2. Make a booking;"
  puts "3. Checkout a customer;"
  puts "4. What is the current occupancy like;"
  puts "5. What revenue are we taking in;"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i
end


  #case response
  #when 1
  #  list_hotels(chain)
  #when 2
  #  #make_booking()
  #when 3
  #  #checkout()
  #when 4
  # # occupancy()
  #when 5
  #  #revenue()#