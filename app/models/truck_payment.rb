class TruckPayment < ApplicationRecord
  belongs_to :truck
  belongs_to :payment
end
