class DockingStation
  attr_reader :arr

  def initialize
    @arr = []
  end

  def dock_empty?
    @arr.length == 0
  end

  def release_bike
    if dock_empty?
      raise "Sorry, no bike in the dock"
    else
      puts "Yes, you can get a bike"
      Bike.new
    end
  end

  def full?
    if @arr.length < 20
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

end

class Bike
  def working?
    true
  end
end

station = DockingStation.new
redbike = station.release_bike
bluebike = station.release_bike
yellowbike = station.release_bike
