class Payment < ApplicationRecord
  has_many :trucks, through: :truck_payments
  has_many :truck_payments

  def as_json(options)
    {
      id: self.id,
      name: self.name,
    }
  end
end
