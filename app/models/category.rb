class Category < ApplicationRecord
  has_many :truck_categories
  has_many :trucks, through: :truck_categories

  def as_json(options)
    {
      id: self.id,
      name: self.name
    }
  end
end
