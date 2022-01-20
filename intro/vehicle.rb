class Vehicle
  def initialize(color)
    @color = color
    @engine_started = false
  end

  def start_engine
    @engine_started = true
  end

  def engine_started?
    return @engine_started
  end
end

car1 = Vehicle.new('pink')
Vehicle.new('blue')

puts car1.engine_started?
car1.start_engine
