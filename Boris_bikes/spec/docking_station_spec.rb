require './lib/docking_station.rb'

describe DockingStation do
  bike = Bike.new

  it { should respond_to(:empty?, :full?, :dock, :release_bike) }
  it { expect(subject.empty?).to eq true}
  it { expect(subject.dock(bike).empty?).to eq false }
  it { expect(subject.full?).to eq false}
#  it { expect(subject.dock(bike(20)).full?).to eq true}
  it { should respond_to(:dock).with(1).argument }
  it { expect(subject.dock(bike)).to match [bike] }
#
  it { expect { subject.release_bike }.to raise_error("Sorry, no bike in the dock") }
  it "should check if docking a bike I can get a bike"  do
    subject.dock(bike)
    expect { subject.release_bike.to be_a bike}
  end

end
