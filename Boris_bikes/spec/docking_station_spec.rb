require './lib/docking_station.rb'

describe DockingStation do
  it { should respond_to(:release_bike) }
  it { expect(subject.release_bike).to be_a Bike }
  it { expect(subject.release_bike.working?).to eq true }
  it { should respond_to(:dock_bike) }
end

#it { should respond_to(:release_bike)
## expect(subject).to respond_to(:release_bike)
