class Hotel

  attr_reader :name, :post_code, :rooms, :occupancy

  def initialize(options={})
    @name = options[:name]
    @post_code = options[:post_code]
    @rooms = options[:rooms]
    @occupancy = {}
  end

 def pretty_string
  "#{name}"
 end

 #def room_here()
 #  @rooms
 #end
end