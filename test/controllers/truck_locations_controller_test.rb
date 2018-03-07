require 'test_helper'

class TruckLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_location = truck_locations(:one)
  end

  test "should get index" do
    get truck_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_location_url
    assert_response :success
  end

  test "should create truck_location" do
    assert_difference('TruckLocation.count') do
      post truck_locations_url, params: { truck_location: { location_id: @truck_location.location_id, truck_id: @truck_location.truck_id } }
    end

    assert_redirected_to truck_location_url(TruckLocation.last)
  end

  test "should show truck_location" do
    get truck_location_url(@truck_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_location_url(@truck_location)
    assert_response :success
  end

  test "should update truck_location" do
    patch truck_location_url(@truck_location), params: { truck_location: { location_id: @truck_location.location_id, truck_id: @truck_location.truck_id } }
    assert_redirected_to truck_location_url(@truck_location)
  end

  test "should destroy truck_location" do
    assert_difference('TruckLocation.count', -1) do
      delete truck_location_url(@truck_location)
    end

    assert_redirected_to truck_locations_url
  end
end
