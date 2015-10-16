class Chain

  attr_reader :name, :hotels

  def initialize(options={})
    @name = options[:name]
    @hotels = {}
  end

  def add_hotel(hotel)
    hotels[hotel.name] = hotel
  end

  def list_hotel
     if hotels.empty?
       "Buy more property Mr Moneybags."
     else
      hotels.map do |hotel_name, hotel|
        puts hotel.name      
       end#.join("\n")
     end
   

  end

end