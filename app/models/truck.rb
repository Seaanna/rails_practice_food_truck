class Truck < ApplicationRecord
  has_many :items
  has_many :truck_locations
  has_many :locations, through: :truck_locations
  has_many :truck_categories
  has_many :categories, through: :truck_categories
  has_many :truck_payments
  has_many :payments, through: :truck_payments
  validates :name, presence: true

  def as_json(options)
    {
      id: self.id,
      name: self.name,
      phone_number: self.phone_number,
      start_time: self.start_time.strftime("%I:%M %p"),
      end_time: self.end_time.strftime("%I:%M %p"),
      payments: self.payments,
      items: self.items,
      locations: self.locations,
      categories: self.categories

    }
  end

  def self.get_trucks_accept_card
    Truck.includes(:payments).where(payments: {name: 'Card'})
  end

  def self.get_trucks_accept_cash_and_card
    Truck.includes(:payments).where(payments: {name: 'Cash and Card'})
  end

  def self.get_trucks_open_now
    Truck.joins(:locations).where("locations.end_time > ?", Time.current).where("locations.start_time < ?", Time.current)
  end

end
