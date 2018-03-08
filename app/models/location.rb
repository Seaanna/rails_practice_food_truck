class Location < ApplicationRecord
  has_many :truck_locations
  has_many :trucks, through: :truck_locations
  has_many :truck_categories
  has_many :trucks, through: :truck_categories

  def as_json(options)
    {
      id: self.id,
      name: self.name,
      phone_number: self.phone_number
    }
  end
end
