class Payment < ApplicationRecord
  has_many :trucks, through: :truck_payments
  has_many :truck_payments
end
