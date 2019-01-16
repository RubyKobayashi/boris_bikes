
require "docking_station.rb"

describe DockingStation do
    subject(:docking_station) {described_class.new}
    let(:bike) {double :bike }

  describe '#release_bike' do
  it "releases working bikes " do
    docking_station.dock(:bike)
    bike = docking_station.release_bike
    expect(bike).to be_working
  end


  context 'when dock is empty'
  it "raises an error" do
    expect(docking_station.bikes).to be_empty
    expect { docking_station.release_bike }.to raise_error "No bikes available"
  end
end


  describe '#dock(bike)' do
  context 'when at full capacity' do
  it "raises an error" do
     needed_bikes = docking_station.capacity - docking_station.bikes.length
     needed_bikes.times{docking_station.dock(:bike)}
     expect { docking_station.dock(:bike)}.to raise_error "At full capacity"
  end
  end
end





end








  # * a method within a class becomes an object hence "respond_to" checks for the object (:release_bike)


# describe DockingStation do
# it "responds to release_bike" do
#   expect(subject).to respond_to :release_bike
# end
# end
