require './lib/docking_station.rb'

describe DockingStation do
  it { should respond_to(:release_bike, :dock_bike, :bike_available?) }
  it { expect(subject.release_bike).to be_a Bike }
  it { expect(subject.release_bike.working?).to eq true }
  it { should respond_to(:dock_bike).with(1).argument }
end
