class Location < ApplicationRecord
  has_many :truck_locations
  has_many :trucks, through: :truck_locations
  has_many :truck_categories
  has_many :trucks, through: :truck_categories
  validates :name, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  def as_json(options)
    {
      id: self.id,
      name: self.name,
      phone_number: self.phone_number,
      start_time: self.start_time.strftime("%I:%M %p"),
      end_time: self.end_time.strftime("%I:%M %p")
    }
  end
end
