require 'test_helper'

class TruckPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_payment = truck_payments(:one)
  end

  test "should get index" do
    get truck_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_payment_url
    assert_response :success
  end

  test "should create truck_payment" do
    assert_difference('TruckPayment.count') do
      post truck_payments_url, params: { truck_payment: { payment_id: @truck_payment.payment_id, truck_id: @truck_payment.truck_id } }
    end

    assert_redirected_to truck_payment_url(TruckPayment.last)
  end

  test "should show truck_payment" do
    get truck_payment_url(@truck_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_payment_url(@truck_payment)
    assert_response :success
  end

  test "should update truck_payment" do
    patch truck_payment_url(@truck_payment), params: { truck_payment: { payment_id: @truck_payment.payment_id, truck_id: @truck_payment.truck_id } }
    assert_redirected_to truck_payment_url(@truck_payment)
  end

  test "should destroy truck_payment" do
    assert_difference('TruckPayment.count', -1) do
      delete truck_payment_url(@truck_payment)
    end

    assert_redirected_to truck_payments_url
  end
end
