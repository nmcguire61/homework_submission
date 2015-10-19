def make_booking (chain)
  puts "Which hotel would you like a room in:"
  chain.list_hotel
  puts
  print "==> "
  booking_hotel = gets.chomp
  hotel = chain.hotels[booking_hotel]
  puts
  puts "Which room would you like:"
  puts
  puts hotel.rooms.select{|key, room| room == "empty" }


  binding.pry;
end

#def list_rooms
#  puts booking_hotel.collect{|key, hash| hash[:*] == "empty" }
#end

def list_hotel(chain)
  puts chain.list_hotel
end



def hotel_rooms
  hotel_rooms = {room_1: "full", room_2: "empty", room_3: "empty", room_4: "empty", room_5: "empty"}
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

