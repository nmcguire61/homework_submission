class Room

  attr_reader :room_number, :price, :guests #, :single or double

  def initialize(options={})
    @room_number = options[:room_number]
    @price = options [:price]
    @guests = options [:guests]
  end
end