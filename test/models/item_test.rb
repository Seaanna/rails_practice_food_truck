require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  setup do
    @item = items(:one)
  end

  test "an item has a name" do
    assert @item.name
  end

  test "an item has a description" do
    assert @item.description
  end

  test "an item has calories" do
    assert @item.calories
  end

  test "an item has a price" do
    assert @item.price
  end

  test "an item has name, description, calories, and price in json" do
    json = JSON.parse(@item.to_json)
    assert_not_equal nil, json['name']
    assert_not_equal nil, json['description']
    assert_not_equal nil, json['calories']
    assert_not_equal nil, json['price']
  end

  test "name is required" do
    @item.name = nil
    @item.save
    assert_equal ["can't be blank"], @item.errors['name']
  end
end
