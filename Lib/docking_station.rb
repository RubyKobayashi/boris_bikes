#A Domain Model is an abstract representation of the Objects within a system
require_relative './bike.rb'
class DockingStation

  attr_reader :bikes
  attr_reader :capacity

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    return Bike.new unless @bikes.empty?
    raise "No bikes available"

  end

  def dock(bike)
    raise "At full capacity" if full?
    @bikes.push(bike) unless full?
  end

private
  def full?
    @bikes.length == @capacity
  end
end
