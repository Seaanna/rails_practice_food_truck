class TruckLocation < ApplicationRecord
  belongs_to :truck
  belongs_to :location
end
