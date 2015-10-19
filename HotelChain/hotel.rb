class Hotel

  attr_reader :name, :post_code, :rooms, :occupancy

  def initialize(options={})
    @name = options[:name]
    @post_code = options[:post_code]
    @rooms = options[:rooms]
    @occupancy = {}
  end

 # #def list_rooms
  #  Hotel.collect{|key, hash| hash[:*] == "empty" }
  #end


end