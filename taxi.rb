class Taxi
  attr_accessor :open_seats, :make, :model, :license_plate, :riders
  attr_reader :driver_name
  def initialize(driver_name, make, model, license_plate)
    @driver_name = driver_name
    @open_seats = 4
    @make = make
    @model = model
    @license_plate = license_plate
    @riders = []
  end

  def pickup(rider)
    if @open_seats > 0
      @riders << rider
      return true
    else
      return false
    end
  end

  def dropoff(rider)
    @riders.shift()
  end
end

class Taxi_Service
  def initialize
    @rider_queue = []
    @taxi_queue = []
  end

  def add_rider

  end

  def add_taxi
  end

  def assign_taxi
  end
end
