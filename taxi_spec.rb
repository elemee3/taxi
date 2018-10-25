require 'rspec'
require_relative 'taxi'
# require_relative 'taxi_service'

describe Taxi do
  before do
    @taxi = Taxi.new("Bubba", "Toyota", "Prius", "XYZ123")
  end
# taxi has a driver name attribute
  it "has a driver name string" do
    expect(@taxi.driver_name).to be_a String
  end
# taxi has a number of free seats
  it "has a free seats attribute that is a number" do
    expect(@taxi.open_seats).to be_a Numeric
  end
# taxi has a make
  it "has a car make" do
    expect(@taxi).to respond_to(:make)
  end
# taxi has a model
  it "has a car model" do
    expect(@taxi).to respond_to(:model)
  end
# taxi has a license plate
  it "has a license plate" do
    expect(@taxi.license_plate).to be_a String
  end
# taxi has a riders list initializes empty array
  it "starts with an empty array of riders" do
    expect(@taxi.riders).to eq([])
  end
# taxi has a method pickup that adds names to riders list
  it "has a pickup method" do
    expect(@taxi).to respond_to(:pickup)
  end
# taxi pickup method adds a rider to riders arr
  it "has pickup method that adds to riders array" do
    @taxi.pickup("new rider")
    expect(@taxi.riders.length).to eq(1)
  end
# taxi has a dropoff method
  it "has dropoff method" do
    expect(@taxi).to respond_to(:dropoff)
  end
# taxi has a dropoff method that removes from riders arr
  it "has a dropoff method that removes from riders array" do
    @taxi.pickup("rider")
    @taxi.dropoff("rider")
    expect(@taxi.riders).to eq([])
  end
end

describe Taxi_Service do
  before do
    @service = Taxi_Service.new()
  end
# taxi service exists, can be created
  it "can create new instances" do
    expect{Taxi_Service.new}.to_not raise_error
  end
# taxi service has an add_rider method
  it "has an add_rider method" do
    expect(@service).to respond_to(:add_rider)
  end
# taxi service has an add_rider method that reduces rider_queue by 1
  it "" do
  end
# taxi service has an add_taxi method
  it "has an add_taxi method" do
    expect(@service).to respond_to(:add_taxi)
  end
# taxi service has an add_rider method that reduces rider_queue by 1
  it "" do
  end
# taxi service has an assign_taxi method
  it "has an assign_taxi method" do
    expect(@service).to respond_to(:assign_taxi)
  end
# taxi service has an add_rider method that reduces rider_queue by 1
  it "" do
  end
end
