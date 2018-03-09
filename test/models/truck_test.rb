require 'test_helper'

class TruckTest < ActiveSupport::TestCase
  setup do
    @truck = trucks(:one)
  end

  test "a truck a name" do
    assert @truck.name
  end

  test "name is required" do
    @truck.name = nil
    @truck.save
    assert_equal ["Name is required"], @truck.errors['name']
  end

  test "a truck a phone_number" do
    assert @truck.phone_number
  end

  test "a truck has_many payments" do
    assert @truck.payments
  end

  test "a truck has_many locations" do
    assert @truck.locations
  end

  test "there is a function to get the trucks that are open now" do
    location_1 = Location.create(name: 'test', start_time: Time.now-1.hour, end_time: Time.now+1.hour)
    location_2 = Location.create(name: 'test2', start_time: Time.now+1.hour, end_time: Time.now+2.hours)

    truck_1 = Truck.create(name: 'truck_1')
    truck_1.locations << location_1

    truck_2 = Truck.create(name: 'truck_2')
    truck_2.locations << location_2

    @trucks =  Truck.get_trucks_open_now
    assert_equal 1, @trucks.count
  end

  test "there is a function to get the trucks that accept credit or debit card" do
    payment_1 = Payment.create(name: 'Card')
    payment_2 = Payment.create(name: 'Cash')

    truck_1 = Truck.create(name: 'truck_1')
    truck_1.payments << payment_1

    truck_2 = Truck.create(name: 'truck_2')
    truck_2.payments << payment_2

    @trucks =  Truck.get_trucks_accept_card
    assert_equal 1, @trucks.count
  end
end
