require "pry-byebug"

puts `clear`


@inventory_hash = {:b7 => "bath fizzers", :a3 => "blouse", :a7 => "bookmark", :c8 => "candy wrapper", :c3 => "chalk", :b10 => "cookie jar", :b9 => "deodorant", :c2 => "drill press", :c6 => "face wash", :a9 => "glow stick", :a4 => "hanger", :c10 => "leg warmers", :a8 => "model car", :b5 => "nail filer", :a1 => "needle", :c7 => "paint brush", :b4 => "photo album", :b3 => "picture frame", :a10 => "rubber band", :a5 => "rubber duck", :c1 => "rusty nail", :b2 => "sharpie", :c9 => "shoe lace", :a6 => "shovel", :a2 => "stop sign", :c5 => "thermometer", :b1 => "tire swing", :b8 => "tissue box", :b6 => "tooth paste", :c4 => "word search"}


@path_order_array = [:a10, :a9, :a8, :a7, :a6, :a5, :a4, :a3, :a2, :a1, :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10]

location_query = []
puts "Welcome to the warehouse picker program."
print "\n\n Please enter locations one at a time and enter (f) when finished:\n\n"

get_value = gets.chomp.to_sym

while get_value != :f
  location_query.push(get_value)
  get_value = gets.chomp.to_sym
end

puts "\n\n"
puts location_query
puts "\n\n"

puts location_query.collect { |bay| @inventory_hash[bay] }

all_distances =  location_query.collect { |bay| @path_order_array.index(bay) }


max_distance = all_distances.max
min_distance = all_distances.min
puts "distance between boxes is #{max_distance - min_distance}"

gets


#binding.pry
#
#path_values = []
#path_min = @path_order_array.min
#path_max = @path_order_array.max
#gets
#