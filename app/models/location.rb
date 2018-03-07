class Location < ApplicationRecord
  has_many :trucks, through: :truck_locations
  has_many :truck_locations
  has_many :trucks, through: :truck_categories
  has_many :truck_categories
end
