#A Domain Model is an abstract representation of the Objects within a system
require_relative './bike.rb'
class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bikes.push(bike)
  end
end

docking_station = DockingStation.new

bike = docking_station.release_bike
