class Truck < ApplicationRecord
  has_many :items
  has_many :locations, through: :truck_locations
  has_many :truck_locations
  has_many :categories, through: :truck_categories
  has_many :truck_categories
  has_many :payments, through: :truck_payments
  has_many :truck_payments
end
