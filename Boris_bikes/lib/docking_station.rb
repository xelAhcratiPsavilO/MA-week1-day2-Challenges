class DockingStation
  attr_reader :arr
  DEFAULT_CAPACITY = 20

  def initialize
    @arr = []
  end

  def empty?
    if @arr.length == 0
      true
    else
      false
    end
  end

  def full?
    if @arr.length < DEFAULT_CAPACITY
      false
    else
      true
    end
  end

  def dock(bike)
    fail "Sorry, the capacity of the station was already filled" if full?
    @arr.push(bike)
    puts "This bike is now in the station"
    @arr
  end

  def release_bike
    fail "Sorry, no bike in the dock" if empty?
    puts "Yes, you can get a bike"
    Bike.new
  end

end

class Bike
  def working?
    true
  end
end

# station = DockingStation.new
# redbike = Bike.new
# station.dock(redbike)
# station.release_bike
