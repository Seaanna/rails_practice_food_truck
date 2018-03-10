class Item < ApplicationRecord
  belongs_to :truck
  validates :name, presence: true
  validates :description, presence: true
  validates :calories, presence: true
  validates :price, presence: true

  def as_json(options)
    {
      id: self.id,
      name: self.name,
      price: "%.2f" % self.price,
      description: self.description,
      calories: self.calories
    }
  end
end
