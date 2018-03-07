class TruckCategory < ApplicationRecord
  belongs_to :truck
  belongs_to :category
end
