require 'test_helper'

class TruckTest < ActiveSupport::TestCase
  setup do
    @truck = trucks(:one)
  end

  test "a truck has_many payments" do
    assert @truck.payments
  end
end
