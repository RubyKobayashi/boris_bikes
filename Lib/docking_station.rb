#A Domain Model is an abstract representation of the Objects within a system
require_relative './bike.rb'
class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    return Bike.new unless @bikes.empty?
    raise "No bikes available"

  end

  def dock(bike)
    @bikes.push(bike)
  end
end
