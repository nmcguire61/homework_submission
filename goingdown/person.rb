class Person
  attr_accessor :name, :weight, :age
  #attr_reader

  def initialize(options={})
    self.name = options[:name]
    self.age = options[:age]
    self.weight = options[:weight].to_f
  end

    #attrs: names, destinations
end