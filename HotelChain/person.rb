class Person

  attr_reader :name, :room

  def initialize(options={})
    @name = options[:name]
    @room = options[:room]
  end
end