require 'pry-byebug'

require_relative 'building'
require_relative 'lift'
require_relative 'person'


b = Building.new name: 'Argyle House', post_code: 'EH3 9DR', floors: 11, lifts: 4



bob = Person.new(name: 'Bob', age: 66, weight: 120)
jonty = Person.new(name: 'Jonty', age: 12, weight: 45)
sarah = Person.new(name: 'Sarah', age: 29, weight: 67)
claire = Person.new(name: 'Claire', age:42, weight: 89)

b.lifts.first.enter(bob)

#if person destination = lift current_floor
#  then 
#      shift person from lift passsengers array to building #occupancy array.
#      Change person current_floor to lift current_floor
#  else
#      do nothing
#end


binding.pry;''