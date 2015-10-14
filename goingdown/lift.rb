class Lift
  attr_accessor:floor
  attr_reader :passengers, :max_passengers

  def initialize
    self.floor = 0
    @max_people = 8
    @passengers = []
  end

  def enter(passengers)
    passengers << passenger unless exceeds_capacity(passengers)
  end  

  def exceeds_capacity(passengers)
    passengers.size >= max_people
  end

  def distance_to_floor(floor)
    (self.floor - floor).abs
  end

  def travel_to!(floor)
    passengers.each { |passenger| passenger.floor = floor }
    self.floor = floor.to_i
  end

 #def top_level?
 #  self.current_floor >= building floors
 #end

 #def bottom_level?
 #  self.current_floor <= 0
 #end#
    
  #def alight
    #when the lift gets to floor equal to a passenger's destination, passenger is moved from lift passenger list to building occupancy list.
  #end
  

  #atrrs: name, capacity, current_floor, passengers
  #methods: go up, go down,  get_out overloaded?, 

end