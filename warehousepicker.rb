# all the actual data needed are stored in the hash and an array below.
@inventory_hash = {:b7 => "bath fizzers", :a3 => "blouse", :a7 => "bookmark", :c8 => "candy wrapper", :c3 => "chalk", :b10 => "cookie jar", :b9 => "deodorant", :c2 => "drill press", :c6 => "face wash", :a9 => "glow stick", :a4 => "hanger", :c10 => "leg warmers", :a8 => "model car", :b5 => "nail filer", :a1 => "needle", :c7 => "paint brush", :b4 => "photo album", :b3 => "picture frame", :a10 => "rubber band", :a5 => "rubber duck", :c1 => "rusty nail", :b2 => "sharpie", :c9 => "shoe lace", :a6 => "shovel", :a2 => "stop sign", :c5 => "thermometer", :b1 => "tire swing", :b8 => "tissue box", :b6 => "tooth paste", :c4 => "word search"}


@path_order_array = [:a10, :a9, :a8, :a7, :a6, :a5, :a4, :a3, :a2, :a1, :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10]

#The main menu
def menu
  puts `clear`
  puts "Welcome to the warehouse picker program." 
  puts "Would you like to search by (l)ocation, by (i)tem or (q)uit?"
  get_string
end

# If i need to find the location that means I have the item names.
def find_location
  query = [] # Define a new empty array called query.
  print "Please enter the item names you are looking for and press (f) when finished \n\n"
  get_tag = get_string
  
  #loop for user input one at a time until 'f' is pressed. Store data in the query array saved as string.
  while get_tag != "f" 
    query.push(get_tag)
    get_tag = gets.chomp.to_s
  end
  
  puts"\n\n You will find those items in the following locations respectively:\n"
  
#for every "item" in the query array find the :location key paired with any matching "item" value in the inventory_hash (which is instanced as I couldn't get the code to see it otherwise).
  puts query.collect { |item| @inventory_hash.key(item) }
end

# If I need to find the items then that means I have the locations.
def find_items
  query = [] # Define new array called query
  print "\n\n Please enter locations one at a time and enter (f) when finished:"
  puts "\n\n"
  
  get_value = gets.chomp.to_sym
  
  # loop for user input one at a time until 'f' is pressed. Store data in the query array saved as symbol.
  while get_value != :f
    query.push(get_value)
    get_value = gets.chomp.to_sym
  end
  
  puts "\n\n"
  
  #for every :location in the query array find the "item" value paired with any matching :location key in the inventory_hash (which is instanced as I couldn't get the code to see it otherwise).
  puts query.collect { |bay| @inventory_hash[bay] }
  
  puts "\n\n"
  
  #for every :location in the query array find the index number of any matching :location in the path_order_array (which is instanced as I couldn't get the code to see it otherwise) then save those values in the all_distances array.
  all_distances =  query.collect { |bay| @path_order_array.index(bay) }
  
  # find the largest value int he all_distances array and save it as max_distance variable
  max_distance = all_distances.max
  # find the smallest value int he all_distances array and save it as min_distance variable
  min_distance = all_distances.min
  # subtract min from max and state the value for the user within the message below
  puts "distance between boxes is #{max_distance - min_distance}"
end


def get_string
  #force input into lowercase with no spaces
  gets.chomp.downcase
end


def pause
  # Sets up the following message and awaits user input (enter button) to continue.
  puts "\n\n Press enter button to start again."
  gets
end


# Main menu options to find out if the user needs to find items or locations
response = menu

until response == 'q'
  case response
  when 'i'
    find_location
  when 'l'
    find_items
  end

  pause

  response = menu
end
