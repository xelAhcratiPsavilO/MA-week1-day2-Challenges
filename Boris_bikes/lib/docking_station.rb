class DockingStation
  attr_reader :bike
  attr_reader :arr

  def release_bike
    Bike.new
  end

  def getting_storage
    arr = []
  end

  def dock(bike, storage)
    @bike = bike
    @arr = storage
    if @arr.length == 0 || @arr.length == 1
      @arr.push(@bike)
      puts "This bike is now in the station"
      p @arr
    else
      puts "Sorry, the capacity of the station was already filled"
      p @arr
    end
  end

  def bike_available?
    if !@bike == true
      raise "Sorry, no bike in the dock"
    end
  end

end

class Bike
  def working?
    true
  end
end
