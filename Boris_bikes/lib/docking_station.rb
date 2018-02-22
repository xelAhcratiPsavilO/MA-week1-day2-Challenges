class DockingStation
  attr_reader :bike
  attr_reader :arr

  def release_bike
    Bike.new
  end

  def getting_storage
    arr = []
    @arr = arr
  end

  def bike
    @bike = bike
  end

  def dock(bike)
    bike
    getting_storage
    if @arr.length < 20
      @arr.push(bike)
      puts "This bike is now in the station"
      p @arr
    else
      puts "Sorry, the capacity of the station was already filled"
      p @arr
    end
  end

  def bike_available?
    getting_storage
    if @arr.length == 0
      raise "Sorry, no bike in the dock"
    else
      puts "Yes, you can get a bike"
    end
  end

end

class Bike
  def working?
    true
  end
end
