require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck = trucks(:one)
  end

  test "should get index" do
    get trucks_url, as: :json
    json_response = JSON.parse(response.body)
    assert_equal 2, json_response.length
    assert_response :success
  end

  test "trucks can be filtered by name" do
    get trucks_url, params: {name: "Bob's Burgers"}, as: :json
    json_response = JSON.parse(response.body)
    assert_equal 1, json_response.length
    assert_equal "Bob's Burgers", json_response[0]['name']
    assert_response :success
  end

  test "trucks can be filtered by category" do
    get trucks_url, params: {category: "Vegan"}, as: :json
    json_response = JSON.parse(response.body)
    assert_equal 1, json_response.length
    assert_equal "Vegan", json_response[0]['categories'][0]['name']
    assert_response :success
  end

  test "trucks can be filtered by location" do
    get trucks_url, params: {location: "1234 Money Street"}, as: :json
    json_response = JSON.parse(response.body)
    assert_equal 1, json_response.length
    assert_equal "1234 Money Street", json_response[0]['locations'][0]['name']
    assert_response :success
  end

  test "should get new" do
    get new_truck_url
    assert_response :success
  end

  test "should create truck" do
    assert_difference('Truck.count') do
      post trucks_url, params: { truck: { name: @truck.name } }
    end

    assert_redirected_to truck_url(Truck.last)
  end

  test "should show truck" do
    get truck_url(@truck)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_url(@truck)
    assert_response :success
  end

  test "should update truck" do
    patch truck_url(@truck), params: { truck: { name: @truck.name } }
    assert_redirected_to truck_url(@truck)
  end

  test "should destroy truck" do
    assert_difference('Truck.count', -1) do
      delete truck_url(@truck)
    end

    assert_redirected_to trucks_url
  end
end
