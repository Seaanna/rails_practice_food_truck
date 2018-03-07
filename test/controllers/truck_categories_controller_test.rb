require 'test_helper'

class TruckCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_category = truck_categories(:one)
  end

  test "should get index" do
    get truck_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_category_url
    assert_response :success
  end

  test "should create truck_category" do
    assert_difference('TruckCategory.count') do
      post truck_categories_url, params: { truck_category: { category_id: @truck_category.category_id, truck_id: @truck_category.truck_id } }
    end

    assert_redirected_to truck_category_url(TruckCategory.last)
  end

  test "should show truck_category" do
    get truck_category_url(@truck_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_category_url(@truck_category)
    assert_response :success
  end

  test "should update truck_category" do
    patch truck_category_url(@truck_category), params: { truck_category: { category_id: @truck_category.category_id, truck_id: @truck_category.truck_id } }
    assert_redirected_to truck_category_url(@truck_category)
  end

  test "should destroy truck_category" do
    assert_difference('TruckCategory.count', -1) do
      delete truck_category_url(@truck_category)
    end

    assert_redirected_to truck_categories_url
  end
end
