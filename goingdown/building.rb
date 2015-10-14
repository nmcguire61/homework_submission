class Building
  attr_accessor :name, :post_code, :occupants, :floors
  attr_reader :lifts

  def initialize(options={})
    self.name = options[:names]
    self.post_code = options[:post_code]
    self.floors = options.fetch(:floors, 2)
    @lifts = options[:lifts].to_i.times.map {Lift.new}
  end

  def capacity
    memo = { max_passengers: 0, current_passsengers: 0 }
    lifts.reduce(memo) do |memo, lift|
      memo[:max_passenger] += lift.max_passengers
      memo[:current_passsengers] += lift.passengers.count
      memo
    end
  end
end
