require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  setup do
    @location = locations(:one)
  end

  test "a location has name" do
    assert @location.name
  end

  test "name is required" do
    @location.name = nil
    @location.save
    assert_equal ["can't be blank"], @location.errors['name']
  end

  test "a location has a start time" do
    assert @location.start_time
  end

  test "a location has an end time" do
    assert @location.end_time
  end

  test "start time is required" do
    @location.start_time = nil
    @location.save
    assert_equal ["can't be blank"], @location.errors['start_time']
  end

  test "end time is required" do
    @location.end_time = nil
    @location.save
    assert_equal ["can't be blank"], @location.errors['end_time']
  end

  test "a location has an lat" do
    assert @location.lat
  end

  test "a location has an long" do
    assert @location.long
  end

  test "a the start_time and end_time are converted to a formated string when converted to json" do
    json = JSON.parse(@location.to_json)
    assert_equal '04:00 PM', json['start_time']
    assert_equal '09:00 PM', json['end_time']
  end
end
